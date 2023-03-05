import 'package:dartz/dartz.dart';
import '../../../../errors/faulire.dart';
import '../models/BooK_Model.dart';

abstract class HomeRepo{
  Future<Either<Faulire,List<BooKModel>>> fetchNewestBooks();
  Future<Either<Faulire,List<BooKModel>>> fetchFeaturedBooks();
}