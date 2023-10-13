import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../model/movie.dart';

final List<movie>movieList=List.generate(100, (index) => movie(title:"movie $index",
time:"${Random().nextInt(100)+60}minutes"));

class movieProvider extends ChangeNotifier{
  final List<movie>_movies=movieList;
  List<movie>get movies=>_movies;
  final List<movie>_wishlist=[];
  List<movie>get wishmovie=>_wishlist;
  void addToList(movie movieformMain){
    _wishlist.add(movieformMain);
  }
  void removeFromList(movie removedmovie){
    _wishlist.remove(removedmovie);
    notifyListeners();
  }

}