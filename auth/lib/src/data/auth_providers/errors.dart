// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:root/root.dart';

class ErrorWeakPassword extends ApiError {
  ErrorWeakPassword(dynamic originalError) : super(originalError);
}

class ErrorInvalidCredential extends ApiError {
  ErrorInvalidCredential(dynamic originalError) : super(originalError);
}

class ErrorEmailAlreadyInUse extends ApiError {
  ErrorEmailAlreadyInUse(this.providers, [dynamic originalError]) : super(originalError);
  final List<String> providers;
}

class ErrorCredentialAlreadyInUse extends ApiError {
  ErrorCredentialAlreadyInUse(dynamic originalError) : super(originalError);
}

class ErrorUserDisabled extends ApiError {
  ErrorUserDisabled(dynamic originalError) : super(originalError);
}

class ErrorRequiresRecentLogin extends ApiError {
  ErrorRequiresRecentLogin(dynamic originalError) : super(originalError);
}

class ErrorProviderAlreadyLinked extends ApiError {
  ErrorProviderAlreadyLinked(dynamic originalError) : super(originalError);
}

class ErrorOperationNotAllowed extends ApiError {
  ErrorOperationNotAllowed(dynamic originalError) : super(originalError);
}

class ErrorInvalidActionCode extends ApiError {
  ErrorInvalidActionCode(dynamic originalError) : super(originalError);
}

class ErrorInvalidEmail extends ApiError {
  ErrorInvalidEmail(dynamic originalError) : super(originalError);
}

class ErrorTooManyRequests extends ApiError {
  ErrorTooManyRequests(dynamic originalError) : super(originalError);
}

class ErrorWrongPassword extends ApiError {
  ErrorWrongPassword(dynamic originalError) : super(originalError);
}

class ErrorUserNotFound extends ApiError {
  ErrorUserNotFound() : super(null);
}

class NoEmailError extends ApiError {
  NoEmailError() : super(null);
}

class AuthCancelledByUser extends ApiError {
  AuthCancelledByUser() : super(null);
}
