class Employee
    attr_accessor :details
    def initialize(details={})
    @name = details[:name]
    @contactNo = details[:contactNo]
    end
    def to_s
        "name: #{@name} , contactNo: #{@contactNo}"
    end    
end

class AddressBook
    def initialize
        @employees = []       #array
        @address_records = {}    #hash
    end

    #function to add employees
    def add_employee(details={})
        employee = Employee.new(details)
        @employees<<employee    #adding employee data to employees array.
        puts "Employee added successfully #{employee}"
    end    

    #function to record address
    def mark_address(id, address)
        if @address_records[id] = address
          puts "Address recorded for employee ID #{id}: #{address}"
        else
          puts "Invalid employee ID. Please try again."
        end
      end

    def view_address(id)
        if @address_records.key?(id)
            puts "Address for the given ID is #{id}: #{@address_records[id]} "
        
         else 
            puts "No records for the date." 
         end
    end
end

def menu 
    puts "----------------------------------------------------------------------------------"
    puts "                               Address Book                                       "
    puts "----------------------------------------------------------------------------------"
    puts "Enter 1 to add employee."
    puts "Enter 2 to record address."
    puts "Enter 3 to view the address."
    puts "Enter 4 to exit."
    print "Enter your option:  ."
end   

addressBook = AddressBook.new
loop do 
    menu

    options = gets.chomp.to_i
    case options
    when 1
        print "Enter the employee name:"
        name = gets.chomp
        print "Enter the contact number: "
        contactNo = gets.chomp
        addressBook.add_employee(name: name,contactNo: contactNo)  
    when 2
        print "Enter ID "
        id = gets.chomp.to_i
        print "Enter address of the employee. "
        address = gets.chomp
        addressBook.mark_address(id,address)
    when 3
        print "Enter ID to view address: " 
        id = gets.chomp.to_i
        addressBook.view_address(id)
    when 4
        puts "You have exited the interface!"
    else
        puts " Invalid choice. Please enter the options mentioned above."
    end
end        
         