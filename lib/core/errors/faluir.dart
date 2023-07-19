import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class FailureBook{
String message;

FailureBook(this.message);
}

class ServerError extends FailureBook{
  ServerError(super.message);


  factory ServerError.fromDioError(DioError dioError){
    switch(dioError.type) {
      case DioExceptionType.connectionTimeout:
       return ServerError('connectionTimeout');
        break;
      case DioExceptionType.sendTimeout:
        return ServerError('sendTimeout');
        break;
      case DioExceptionType.receiveTimeout:
        return ServerError('receiveTimeout');
        break;
      case DioExceptionType.badCertificate:
        return ServerError('connectionTimeout');
        break;
      case DioExceptionType.badResponse:
        return ServerError.fromBadReq(dioError.response!.statusCode!,dioError.response!.data);
        break;
      case DioExceptionType.cancel:
        return ServerError('cancel');
        break;
      case DioExceptionType.connectionError:
        return ServerError('connectionError');
        break;
      case DioExceptionType.unknown:
        return ServerError('unknown');
        break;
    }

  }
  factory ServerError.fromBadReq(int statusCode,dynamic response){

    if(statusCode=='404'){
      return ServerError('not found');
    }
    else if(statusCode=='500'){
      return ServerError("there is a problem in the server , pleas try later ");
    }
    else{
      return ServerError(response["error"]["message"]);

    }

  }
}