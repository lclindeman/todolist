require_relative "todolist"

describe Todolist do
  it "allows todo list to have a name" do
    list = Todolist.new("Vacations")
    expect(list.name).to eq("Vacations")
  end

  it "allows a task to be an instruction" do
    task = Task.new("Empty Dishwasher")
    expect(task.instruction).to eq("Empty Dishwasher")
  end

  it "allows a task to be added to the list" do
    list = Todolist.new("Vacations")
    task = Task.new("Hawaii")
    list.add_task(task)
    expect(list.tasks).to eq([task])
  end

  it "allows multiple tasks to be added to the list" do
    list = Todolist.new("Vacations")
    task1 = Task.new("Hawaii")
    task2 = Task.new("Chicago")
    list.add_task(task1)
    list.add_task(task2)
    expect(list.tasks).to eq([task1, task2])
  end

  it "allows a task to be removed" do
    list = Todolist.new("Vacations")
    task1 = Task.new("Hawaii")
    task2 = Task.new("Chicago")
    list.add_task(task1)
    list.add_task(task2)  
    list.remove_task(task1)
    expect(list.tasks).not_to include(task1)
  end
end

  