require_relative "todolist"

# allows the user to name a list
print "What list would you like to create today? "
list_name = gets.chomp
list = Todolist.new(list_name)

loop do 
  print "What would you like to do next? "
  action = gets.chomp
  if action == "view the list"
    if list.tasks.empty?
      puts "Sorry, that list has no tasks on it yet."
    else
      puts list.tasks
    end
  elsif action == "add a task"
    print "What would you like to put on the list? "
    list.add_task(gets.chomp) 
  elsif action == "remove a task"
    print "What would you like to remove? "
    list.remove_task(gets.chomp)  
  elsif action == "quit"
    puts "Goodbye!"
    break
  else 
    puts "Looks like you might be confused. Type \"add a task\", \"view the list\", \"remove a task\", or \"quit\"."
  end
end

