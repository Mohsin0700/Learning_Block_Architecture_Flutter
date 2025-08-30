import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  int currentState = 0;
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
    print(state);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print('Change from ${change.currentState} to ${change.nextState}');
    currentState = change.currentState;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('Error: $error');
  }
}
