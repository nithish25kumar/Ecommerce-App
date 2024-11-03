import 'package:dartz/dartz.dart';
import 'package:ecommerce/common/bloc/button/button_state.dart';
import 'package:ecommerce/core/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonStateCubit extends Cubit {
  ButtonStateCubit() : super(ButtonInitialState());
  Future<void> execute({dynamic params, required Usecase usecase}) async {
    emit(ButtonLoadingState());
    try {
      Either returnedData = await usecase.call(params: params);
      returnedData.fold((error) {
        emit(ButtonFailureState());
      }, (data) {
        emit(ButtonSuccessState());
      });
    } catch (e) {
      emit(ButtonFailureState());
    }
  }
}