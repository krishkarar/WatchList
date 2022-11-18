class show{

  late final String name;

  late bool isDone;

  show({required this.name, this.isDone = false});

  void toggleDone(){
    isDone = ! isDone;
  }

}