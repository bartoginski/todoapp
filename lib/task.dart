class Task {
  String _name;
  bool _completed = false;


  Task(this._name);

  getName() => this._name;
  setName(name) => this._name = name;

  isCompleted() => this._completed;
  setCompleted(completed) => this._completed = completed;

}