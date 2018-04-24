def multiply(any_number, any_other_number)
  any_number.to_f * any_other_number.to_f
end

def divide(any_number, any_other_number)
  any_number.to_f / any_other_number.to_f
end

def subtract(any_number, any_other_number)
  any_number.to_f - any_other_number.to_f
end

def add(any_number, any_other_number)
  any_number.to_f + any_other_number.to_f
end

def mod(any_number, any_other_number)
  any_number.to_f % any_other_number.to_f
end

puts "Welcome to the calculator, what would you like to do? 1)multiply, 2) divide, 3) add"
prompt = gets.chomp

puts "What do you want the first number to be?"
first_number = gets.chomp
puts "What do you want the second number to be?"
second_number = gets.chomp

if prompt == "1"
 puts "You have chosen to multiply #{first_number} with #{second_number}"
 puts "The first number multiplied by the second is #{multiply(first_number, second_number)}"
elsif prompt == "2"
  puts "You have chosen to divide"
  puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
elsif prompt == "3"
  puts "You have chosen to add"
  puts "The first number added to the second number is: #{add(first_number, second_number)}"
else
  puts "Incorrect choice"
end
