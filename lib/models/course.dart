class Course{
  String name;
  String description;
  String urlPhoto;
  List<Task> listTask;

  Course(this.name,{this.description,this.urlPhoto});
  void addTask(Task newTask){
    listTask.add(newTask);
  }
}

class Task{
  String name;
  String description;
  bool complete;

}