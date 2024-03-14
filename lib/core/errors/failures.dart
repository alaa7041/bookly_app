import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioErorr(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeout with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("receive timeout with ApiServer");

      case DioExceptionType.connectionError:
        return ServerFailure("Request to ApiServer was canceled");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("no Internet Connections");
        }
        return ServerFailure("Unexpected Error, Pleas try later");
      default:
        return ServerFailure("OPPs There was an error, Pleas try again");
    }

  }

  factory ServerFailure.fromResponse(int? statesCode, dynamic response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statesCode == 404) {
      return ServerFailure("Your request not found! pleas try later");
    } else if (statesCode == 500) {
      return ServerFailure("Internal Server error , Pleas try later");
    } else {
      return ServerFailure("OPPs There was an error, Pleas try again");
    }
  }
}
