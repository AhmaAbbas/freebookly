

import '../../../data/models/BooK_Model.dart';

abstract class NewsetBooks_States{}
class Initial_NewsetBooks_State extends NewsetBooks_States{}
class Loading_NewsetBooks_State extends NewsetBooks_States{}
class Faulire_NewsetBooks_State extends NewsetBooks_States{
  String error;
  Faulire_NewsetBooks_State(this.error);
}
class Succes_NewsetBooks_State extends NewsetBooks_States{
  List<BooKModel> Books;
  Succes_NewsetBooks_State(this.Books);
}
