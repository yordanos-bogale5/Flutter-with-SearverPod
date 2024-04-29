abstract class Failure {}

//general failures

class ServerException extends Failure {}

class CacheException extends Failure {}

class NetworkException extends Failure {}