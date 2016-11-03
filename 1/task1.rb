module Operation

  def addition
    @first_operand + @second_operand
  end

  def substraction
    @first_operand - @second_operand
  end

  def myltipying
    @first_operand * @second_operand
  end

  def division
    check_zero(@second_operand)
    (@first_operand.to_f / @second_operand.to_f).round(2)
  end

  def check_zero(n)
    if n == 0
      puts "Dividing by zero is forbidden"
      puts "Please try from scratch"
      exit 1
    end
  end
end

class Calc
  include Operation

  def initialize
    puts "Pleae enter the first operand:"
    @first_operand = gets.to_i
    puts "Pleae enter the second operand:"
    @second_operand = gets.to_i
  end
end


puts "What would you like to do?"

puts "------------------------------------"
puts "Please, choose the needed operation:"
puts "[1] Addition"
puts "[2] Substraction"
puts "[3] Multiplying"
puts "[4] Division"
puts "[0] Exit"

grade = gets.chomp
case grade
  when "1"
    puts "You have choosen addition"
    puts "Result of your request => #{Calc.new.addition}"

  when "2"
    puts "You have choosen substraction"
    puts "Result of your request => #{Calc.new.substraction}"

  when "3"
    puts "You have choosen myltiplying"
    puts "Result of your request => #{Calc.new.myltipying}"

  when "4"
    puts "You have choosen division"
    puts "Result of your request => #{Calc.new.division}"

  when "0"
    exit 0
  else
    puts "You just making it up!"
  end

