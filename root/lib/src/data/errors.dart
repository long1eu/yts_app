// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

class ApiError extends Error {
  ApiError(this.error);

  final dynamic error;
}
