import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchUser extends UserEvent {
  final int id;

  FetchUser({required this.id});

  @override
  List<Object> get props => [id];
}
