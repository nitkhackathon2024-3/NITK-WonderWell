import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/failure_response.dart';

sealed class FailureType extends Equatable {
  const FailureType();

  const factory FailureType.server(FailureResponse? failureResponse) = Server;
  const factory FailureType.notConnectedToNetwork() = NotConnectedToNetwork;
  const factory FailureType.cache(FailureResponse? failureResponse) = Cache;
  const factory FailureType.noGeocodingMatch() = NoGeocodingMatch;
}

class Server extends FailureType {
  final FailureResponse? failureResponse;

  const Server(this.failureResponse);

  @override
  List<Object?> get props => [];
}

class NotConnectedToNetwork extends FailureType {
  const NotConnectedToNetwork();

  @override
  List<Object?> get props => [];
}

class Cache extends FailureType {
  final FailureResponse? failureResponse;
  const Cache(this.failureResponse);

  @override
  List<Object?> get props => [];
}

class NoGeocodingMatch extends FailureType {
  const NoGeocodingMatch();

  @override
  List<Object?> get props => [];
}
