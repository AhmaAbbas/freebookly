
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/homerepo/homerepopatern.dart';
import 'featuredbooks_state.dart';

class FeaturedBooks_Cubit extends Cubit<FeaturedBooks_States>{
  FeaturedBooks_Cubit(this.homeRepo):super(Initial_FeaturdBooksState());
  final HomeRepo homeRepo;
  Future<void> fetchfeaturedbooks()async
  {
    emit(Loading_FeaturdBooksState());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((faulire) {
      emit(Faulire_FeaturdBooksState(faulire.error));
    }, (Books) {
      emit(Succes_FeaturdBooksState(Books));
    });
  }



}