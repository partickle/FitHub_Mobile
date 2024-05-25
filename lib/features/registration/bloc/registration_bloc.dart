import 'package:fithub/features/registration/bloc/registration_events.dart';
import 'package:fithub/features/registration/bloc/registration_state.dart';
import 'package:fithub/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is FetchUser) {
      yield UserLoading();
      try {
        final user = await userRepository.fetchUser(event.id);
        yield UserLoaded(user: user);
      } catch (e) {
        yield UserError(message: e.toString());
      }
    }
  }
}
