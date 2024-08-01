class NameOfTask
    attr_accessor :task_explaination, :completion
    def initialize(task_explaination)
        @task_explaination = task_explaination
        @completion = false
    end

    def mark_completed 
        @completion = true   
    end
end  

class ToDoList
    def initialize
        @to_do_list = []
    end
    
    def add_task(task_explaination)
        task = NameOfTask.new(task_explaination)
        @to_do_list << task
        puts "A new task has been added: #{task_explaination}"
    end
    
    def display_tasks
        puts "To Do Lists:"
        if @to_do_list.empty?
            puts "No tasks available!"
        else 
            @to_do_list.each_with_index do |task, index| 
                status = task.completion ? "completed" : "not completed"
                puts "#{index + 1}. #{status} #{task.task_explaination}"
            end
        end    
    end

    def mark_completed_tasks(index)
        if valid_index?(index)
            @to_do_list[index].mark_completed
            puts "This task '#{@to_do_list[index].task_explaination}' has been completed."
        else
            puts "Task not found." 
        end
    end
    
    def valid_index?(index)
        index >= 0 && index < @to_do_list.length
    end

end

def options_for_list
    list = ToDoList.new

    loop do 
        puts "--------------------------------------------------------------------------"
        puts "                        My To Do List                                     "
        puts "--------------------------------------------------------------------------"
        puts "Press 1 to add a task."
        puts "Press 2 to display the tasks."
        puts "Press 3 to mark the completion of a task. "
        puts "Press 4 to exit the interface."
        print "Choose an option: "

        options = gets.chomp.to_i

        case options
        when 1
            puts "Enter the task explanation."
            task_explaination = gets.chomp
            list.add_task(task_explaination)
        when 2 
            list.display_tasks
        when 3
            print "Enter task number of completed task."
            index = gets.chomp.to_i - 1
            list.mark_completed_tasks(index)
        when 4
            puts "You have exited the interface."
        else 
            puts "Not a valid option, please choose a valid one!"
        end
    end
end

begin
    options_for_list
end













        



