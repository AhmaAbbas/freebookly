

import '../../../data/models/BooK_Model.dart';

abstract class FeaturedBooks_States{}
class Initial_FeaturdBooksState extends FeaturedBooks_States{}
class Loading_FeaturdBooksState extends FeaturedBooks_States{}
class Faulire_FeaturdBooksState extends FeaturedBooks_States{
  String error;
  Faulire_FeaturdBooksState(this.error);
}
class Succes_FeaturdBooksState extends FeaturedBooks_States{
  List<BooKModel> Books;
   Succes_FeaturdBooksState(this.Books);
}
