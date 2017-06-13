# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

def sum(number)
  total = 0
  (1..number).to_a.each do |num|
      total += num
  end
  total
end

def product(number)
  total = 1
  (1..number).to_a.each do |num|
      total *= num
  end
  total
end

loop do

  puts ">> Please enter an integer greater than 0"
  number = 0
  loop do
    number = gets.chomp.to_i
    break if number > 0
    puts ">> Sorry, that number is not greater than 0, try again"
  end

  puts ">> Enter + to determine the sum of all numbers between 1 and #{number}"
  puts ">> Or enter * to determine the product of all numbers between 1 and #{number}"

  operator = " "
  loop do
      operator = gets.chomp
      break if operator == "+" || operator == "*"
      puts ">> That is an invalid operator. Please enter + or *"
  end

  if operator == "+"
    puts ">> The total sum from 1 to #{number} is #{sum(number)}"
  else
    puts ">> The total product from 1 to #{number} is #{product(number)}"
  end
  break
end
