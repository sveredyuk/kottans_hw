class Todo
  attr_reader :task
  def initialize(task, status = "Not Done")
    @task = [task, status]
  end

  def to_s
    @task
  end
end

class TodoList
  attr_reader :list
  def initialize
    @list = []
  end

  def view_list
    list.each.with_index(1) { |val,index| puts "id: #{index} for task -> #{val}" }
    puts
  end

  def change_status_to_done(index)
    list[index][1] = "Done"
  end

  def cancel_task(index)
    list.delete_at(index-1)
  end
end

# generate
task1 = Todo.new("buy milk", "done")
task2 = Todo.new("buy conditioner")
task3 = Todo.new("buy TV")

tlist = TodoList.new
tlist.list << task1.task << task2.task << task3.task

while true
  puts "What would you like to do?"
  puts "------------------------------------"
  puts "Please, choose the needed operation:"
  puts "[1] Add new task"
  puts "[2] View TodoList"
  puts "[3] Change status"
  puts "[4] Delete task"
  puts "[0] Exit"


  grade = gets.chomp
  case grade
    when "1"
      puts "Please enter the task"
      new_task = gets.chomp
      tlist.list << Todo.new(new_task).task

    when "2"
      puts "Your Todo list:"
      puts tlist.view_list

    when "3"
      puts "Please, enter the id of task, which should be changed:"
      index = gets.chomp.to_i
      puts tlist.change_status_to_done(index)

    when "4"
      puts "Please, enter the id of task, which should be deleteed:"
      index = gets.chomp.to_i
      puts tlist.cancel_task(index)

    when "0"
      puts "Your Todo list:"
      puts tlist.view_list
      exit 0

    else
      puts "You just making it up!"
  end

puts "Press any key to continue or 'N/n' for exit? [*/n]"
  if gets.chomp == "n"
    puts "Your Todo list:"
    puts tlist.view_list
    puts "Bye"
  break
    exit 0
  end
end