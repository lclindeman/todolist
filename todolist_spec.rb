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
end

