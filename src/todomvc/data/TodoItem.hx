package todomvc.data;

import coconut.data.Model;

class TodoItem implements Model {
  
  @:editable var completed:Bool = @byDefault false;
  @:editable var description:String;

  @:constant var created:Date = @byDefault Date.now();

  static public function create(description:String) 
    return new TodoItem({ description: description });//Constructor is autogenerated

  static public function isActive(item:TodoItem)
    return !item.completed;

  static public function isCompleted(item:TodoItem)
    return item.completed;

}