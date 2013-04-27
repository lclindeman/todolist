# add a task
# cross off a task when completed
# remove a task b/c you don't want to do it anymore
# view the list

class Todolist
  def initialize(name)
    @name = name
  end
  
  def name
    @name
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

