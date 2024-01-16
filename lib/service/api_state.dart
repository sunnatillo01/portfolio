import 'dart:convert';

abstract class ApiState {
  final int code;
  final Object response;

  ApiState(this.code, this.response);

  dynamic decodedData() => jsonDecode(response.toString());
}

class Success extends ApiState {
  Success(int code, Object response) : super(code, response);
}

class Failure extends ApiState {
  Failure(int code, Object response) : super(code, response);

  @override
  String toString() {
    return response.toString();
  }

  String errorMessage() {
    return response.toString();
  }
}
