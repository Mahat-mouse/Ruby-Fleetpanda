

    # def initialize(num1,num2)
    #     @num1 = num1
    #     @num2 = num2
    # end    

    def add(num1,num2)
        num1+num2
    end

    def subtract(num1,num2)
        num1-num2
    end
    
    def multiply(num1,num2)
        num1*num2
    end
    
    def division(num1,num2)
        if num2 != 0
            num1/num2
        else
            puts "Zerodivisionerror." 
        end       
    end
    
    
    puts "Namaste! I am a calculator."
    puts "Enter first number."   # taking user input
    a = gets.to_f
    puts "Enter second number." 
    b = gets.to_f
    puts "To perform operations enter the options below:
           1 = add
           2 = subtract
           3 = multiply
           4 = division "
    
    operations = gets.to_i
    case operations
    when 1 
        puts "Sum = #{add(a,b)}" 
    when 2
        puts "Difference = #{subtract(a,b)}"  
    when 3
        puts "Product = #{multiply(a,b)}"
    when 4
        puts "Division = #{division(a,b)}"
    else 
        puts "Operation is not valid."
    end         



      

    
    
    
    