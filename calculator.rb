class CalculatorNumbers
    def get_values
        gets.split(" ").map{ |s| s.chomp.to_i }
    end
       
    def operators operator, list_of_num
        response = list_of_num.inject(operator)
        puts "Result is: #{response}" 
    end
end
    
class Operate < CalculatorNumbers

    def main 
        type_of_calculator
        case gets.chomp.downcase
        when 'simple'
            basic
        when 'advanced'
            advanced
        else
            wrong_input
        end 
    end

    def type_of_calculator
        puts "Which calculator would you like [simple] or [advanced] ?"
    end

    def basic
        puts "Would you like to [add], [multiply], [subtract] or [division]?"
        case gets.chomp.downcase
        when 'add'
            puts "Which numbers would you like to add?"
            list_of_num = get_values
            operators :+, list_of_num
        when 'substract'
            puts "Which numbers would you like to subtract?"
            list_of_num = get_values
            operators :-, list_of_num
        when 'division'
            puts "Which numbers would you like to divide?"
            list_of_num = get_values
            operators :/, list_of_num
        when 'multiply'
            puts "Which numbers would you like to multiply?"
            list_of_num = get_values
            operators :*, list_of_num
        else
            wrong_input
        end
    end

    def advanced
        puts "Would you like to [power], or [square root]?" 
        case gets.chomp.downcase
        when 'power'
          puts "Which number would you like to power?"
          list_of_num = get_values
          operators :**, list_of_num
            
        when 'square root'
          puts "Which number would you like to square root?"
          number = gets.chomp.to_i
          square_number = Math.sqrt number
          puts "Your square number is #{square_number}"
        else
            wrong_input
        end
    end

    def wrong_input
        puts "Wrong input please try again"
    end
end