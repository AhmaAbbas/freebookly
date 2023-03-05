


import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/homerepo/homerepopatern.dart';
import 'newestbooks_states.dart';

class NewsetBooks_Cubit extends Cubit<NewsetBooks_States>{
  NewsetBooks_Cubit(this.homeRepo):super(Initial_NewsetBooks_State());
  final HomeRepo homeRepo;
  Future<void> fetchnewsetbooks()async
  {
    emit(Loading_NewsetBooks_State());
    var result=await homeRepo.fetchNewestBooks();
    result.fold((faulire) {
      emit(Faulire_NewsetBooks_State(faulire.error));
    }, (Books) {
      emit(Succes_NewsetBooks_State(Books));
    });
  }



}