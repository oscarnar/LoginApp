class Course{
  String name;
  String description;
  List<Task> listTask;

  Course(this.name,{this.description});
  void addTask(Task newTask){
    listTask.add(newTask);
  }
}

class Task{
  String name;
  String description;
  bool complete;

}