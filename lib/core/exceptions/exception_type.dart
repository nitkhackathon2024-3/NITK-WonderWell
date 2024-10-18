sealed class ExceptionType {
  const ExceptionType();
  
  const factory ExceptionType.server() = ServerException;
  const factory ExceptionType.cache() = CacheException;
}

class ServerException extends ExceptionType {
  const ServerException();
}

class CacheException extends ExceptionType {
  const CacheException();
}