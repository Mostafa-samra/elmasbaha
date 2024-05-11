import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/networl/local/cash_helper.dart';

part 'elmesbaha_state.dart';

class ElMesbahaCubit extends Cubit<ElMesbahaState> {
  ElMesbahaCubit() : super(ElMesbahaInitial());
  int counter = 1;
  //late SharedPreferences sharedPreferences;

  void addCounter() async {
    emit(ElMesbahaLoding());
    counter++;

    if (counter > 999) {
      counter = 1;
    }
    await CashHelper.setCash(key: "counter", value: counter);
    // getCounter();
    emit(ElMesbahaIncremint());
  }

  void getCounter() async {
    emit(ElMesbahaLoding());
    counter = await CashHelper.getCash(key: "counter") ?? 0;
    emit(ElMesbahaSucsess());
  }

  void resetCounter() {
    emit(ElMesbahaLoding());
    CashHelper.resetCash(key: "counter").then((_) => counter = 0);
    emit(ElMesbahaReset());
  }
}




/*  final int newCounter = ElMesbahaCounterState(counter: 1).counter + 1;
    if (newCounter > 999) {
      emit(ElMesbahaCounterState(counter: 1));
    } else {
      emit(ElMesbahaCounterState(counter: newCounter));
    } */