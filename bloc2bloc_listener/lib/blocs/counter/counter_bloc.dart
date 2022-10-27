import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int incrementSize = 1;

  CounterBloc() : super(CounterState.initial()) {
    // colorSubscription = colorBloc.stream.listen((ColorState colorState) {
    //   if (colorState.color == Colors.red) {
    //     incrementSize = 1;
    //   } else if (colorState.color == Colors.green) {
    //     incrementSize = 10;
    //   } else if (colorState.color == Colors.blue) {
    //     incrementSize = 100;
    //   } else if (colorState.color == Colors.black) {
    //     incrementSize = -100;
    //     add(ChangeCountEvent());
    //   }
    // });

    on<ChangeCountEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter + event.incrementSize));
    });
  }
}
