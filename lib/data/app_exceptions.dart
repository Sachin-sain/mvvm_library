
class AppException implements Exception{
  final String? _message;
  final String? _prefix;
  AppException([this._message,this._prefix]);
  @override
  String toString(){
    return '$_message$_prefix';
  }
}

class InternetException extends AppException{
  InternetException([String? message])   :super([message, 'No Internet'].toString());
}

class RequestTimeout extends AppException{
  RequestTimeout([String? message])   :super([message, 'Request Time out'].toString());
}


class ServerException extends AppException{
  ServerException([String? message])   :super([message, 'Internet Server Exception'].toString());
}

class InvalidUrlException extends AppException{
  InvalidUrlException([String? message])   :super([message, 'Invalid url'].toString());
}
class FetchDataException extends AppException{
  FetchDataException([String? message])   :super([message, 'No Access data'].toString());
}