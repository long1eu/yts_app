// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

typedef Converter<State, Type> = Type Function(State event);

class TypedStoreEpic<State, Type> extends EpicClass<State> {
  TypedStoreEpic({@required this.epic, @required this.converter});

  final Converter<State, Type> converter;
  final Epic<Type> epic;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<State> store) {
    return epic(
      actions,
      _EpicStore<State, Type>(
        converter: converter,
        state: () => store.state,
        onChange: store.onChange,
      ),
    );
  }
}

class TypedStoreMiddleware<State, Type> {
  const TypedStoreMiddleware(this._middleware, this._convert);

  final List<Middleware<Type>> _middleware;
  final Converter<State, Type> _convert;

  List<Middleware<State>> get middleware {
    return _middleware.map((Middleware<Type> middleware) {
      return (Store<State> store, dynamic action, NextDispatcher next) {
        return middleware(_TypedStore<State, Type>(store, _convert), action, next);
      };
    }).toList();
  }
}

class _EpicStore<State, Type> extends EpicStore<Type> {
  _EpicStore({@required Stream<State> onChange, State Function() state, @required this.converter})
      : _onChange = onChange,
        _state = state,
        super(null);

  final Converter<State, Type> converter;
  final State Function() _state;
  final Stream<State> _onChange;

  /// Returns the current state of the redux store
  @override
  Type get state => converter(_state());

  @override
  Stream<Type> get onChange => _onChange.map(converter);
}

// This implementation will only be used in middleware
class _TypedStore<State, Type> implements Store<Type> {
  _TypedStore(this._store, this._convert);

  final Converter<State, Type> _convert;
  final Store<State> _store;

  @override
  Reducer<Type> get reducer {
    throw UnsupportedError('Unsupported operation on $runtimeType');
  }

  @override
  set reducer(Reducer<Type> _reducer) {
    throw UnsupportedError('Unsupported operation on $runtimeType');
  }

  @override
  void dispatch(dynamic action) {
    _store.dispatch(action);
  }

  @override
  Stream<Type> get onChange => _store.onChange.map(_convert);

  @override
  Type get state => _convert(_store.state);

  @override
  Future<dynamic> teardown() => _store.teardown();
}
