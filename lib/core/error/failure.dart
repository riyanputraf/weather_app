import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;

  Failure(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class ServerFailure extends Failure{
  ServerFailure(super.message);

}

class NotFoundFailure extends Failure{
  NotFoundFailure(super.message);

}

class ConnectionFailure extends Failure{
  ConnectionFailure(super.message);

}

class SomethingFailure extends Failure{
  SomethingFailure(super.message);

}