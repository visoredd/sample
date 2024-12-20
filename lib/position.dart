import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class PositionEvent extends Equatable {
  const PositionEvent();
}

class UpdatePosition extends PositionEvent {
  final Offset position;
  const UpdatePosition(this.position);

  @override
  List<Object> get props => [position];
}

// States
class PositionState extends Equatable {
  final Offset position;
  const PositionState({this.position = Offset.zero});

  @override
  List<Object> get props => [position];
}

class PositionBloc extends Bloc<PositionEvent, PositionState> {
  PositionBloc() : super(const PositionState()) {
    on<UpdatePosition>((event, emit) {
      emit(PositionState(position: event.position));
    });
  }
}