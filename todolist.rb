# add a task
# cross off a task when completed
# remove a task b/c you don't want to do it anymore
# view the list
# puts the list in a certain order

class Todolist
  def initialize(name)
    @name = name
    @tasks = []
  end
  
  def name
    @name
  end

  def add_task(task)
    @tasks.push(task)
  end

  def remove_task(task)
    @tasks.delete(task)
  end

  def tasks
    @tasks
  end
end

class Task
  def initialize(instruction)
    @instruction = instruction
  end

  def instruction
    @instruction
  end
end

