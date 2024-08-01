class Expense
    attr_accessor :expense_description, :amount, :date
    def initialize(expense_description, amount, date)
        @expense_description = expense_description
        @amount = amount
        @date = date
    end
    
    def to_s
        "#{@date}, #{@expense_description}, #{@amount}"
    end
end

class ExpenseTracker
    def initialize
        @expenses = []
    end

    def add_expenses(expense_description, amount, date)
        expense = Expense.new(expense_description, amount, date)
        @expenses << expense
        puts "Expense '#{expense_description}' added successfully."
    end
    
    def display_expenses
        puts "The list of expenses incurred are: "
        if @expenses.empty?
            puts "There are no expenses."
        else 
            @expenses.each_with_index do |expense, index|    
                puts "#{index + 1}. #{expense}"
            end
        end
    end
end

def menu
    tracker = ExpenseTracker.new

    loop do
        puts "------------------------------------------------------------------------"
        puts "                      My Expense Tracker                                "
        puts "------------------------------------------------------------------------"
        puts "Press 1 to add an expense."
        puts "Press 2 to display the expenses."
        puts "Press 3 to exit the interface."
        print "Choose an option: "

        option = gets.chomp.to_i
        case option
        when 1
            print "Enter the description of expense."
            expense_description = gets.chomp
            print "Enter the expense amount: "
            amount = gets.chomp.to_f
            print "Enter the date when this expense occured: "
            date = gets.chomp
            tracker.add_expenses(expense_description, amount, date)

        when 2
            tracker.display_expenses

        when 3 
            puts "You have exited the interface!"

        else
            puts "The option is not valid. Please enter the valid option as listed above."
        end 
    end
end

begin
    menu
end


