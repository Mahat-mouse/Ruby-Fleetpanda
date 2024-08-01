#Employee class
class Employee
    attr_accessor :id,:name
    def initialize(attributes={})
    @id = attributes[:id]
    @name = attributes[:name]
    end 
end    
#Attendance class    
class Attendance
    def initialize
        @employees = []    # array
        @attendance_records = {}   #hash
    end
    
    #function to add employees
    def add_employee(attributes={})
        employee = Employee.new(attributes)
        @employees << employee   #adding employee data to the employees array.
        puts "Employee added successfully: #{employee}"
    end
    
    #function to mark the attendance
    def mark_attendance(date, presentId)
        @attendance_records[date] = presentId 
        puts "Attendance logged in for this date: #{date}"
    end
    
    #function to show recorded attendance
    def view_attendance(date)
        # @attendance_records[date] = presentId
        if @attendance_records.key?(date)
            puts "Attendance for date: #{date}"
            @employees.each do|employee|
                puts employee.id
                puts @attendance_records[date]
                status = @attendance_records[date].include?(employee.id.to_s) ? "Present" : "Absent"
            puts "#{employee.name} - #{status}"
        end    
        else
            puts "No records for #{date}." 
        end
    end
end

#menu or user interface 
def menu 
    puts "----------------------------------------------------------------------------------"
    puts "                       Attendance Management System                               "
    puts "----------------------------------------------------------------------------------"
    puts "Enter 1 to add employee."
    puts "Enter 2 to mark your attendance ."
    puts "Enter 3 to view the attendance for given date."
    puts "Enter 4 to exit."
    print "Enter your option:  "
end    

attendance = Attendance.new
loop do 
    menu

    option = gets.chomp.to_i 
    case option
    when 1
        print "Enter the employee Id: "
        id = gets.chomp.to_i
        print "Enter the employee name: "
        name = gets.chomp
        attendance.add_employee(id: id,name: name)
    when 2
        print "Enter date: "
        date = gets.chomp.to_i
        print "Enter Id's of present employees: "
        presentId = gets.chomp.split(',')
        attendance.mark_attendance(date,presentId)
    when 3 
        print "Enter date to view attendance: " 
        date = gets.chomp.to_i
        print "Enter the employee ID: "
        id = gets.chomp.to_i 
        attendance.view_attendance(date)
    when 4
        puts "You have exited the interface!"
    else
        puts " Invalid choice. Please enter the options mentioned above."
    end
end        


















        











