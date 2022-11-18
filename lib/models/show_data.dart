import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:watchlist/models/show.dart';


class show_data extends ChangeNotifier{
  List<show> _shows = [
    show(name: 'The guest'),
    show(name: 'Ozark'),
    show(name: 'The Wire'),
    show(name: 'The sopranos'),
    show(name: '96')
  ];

  UnmodifiableListView<show> get showList{
    return UnmodifiableListView(_shows);
  }


  int get showCount{
    return _shows.length;
  }

  void addShow(String newShowTitle){
    final Show = show(name: newShowTitle);
    _shows.add(Show);
    notifyListeners();
  }

  void updateShow(show showName){
    showName.toggleDone();
    notifyListeners();
  }

  void deleteShow(int showIndex){
    _shows.removeAt(showIndex);
    notifyListeners();
  }
}