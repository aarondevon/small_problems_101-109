# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

num_arr = []

puts "Enter the 1st number:"
num_arr << gets.chomp.to_i

puts "Enter the 2nd number:"
num_arr << gets.chomp.to_i

puts "Enter the 3rd number:"
num_arr << gets.chomp.to_i

puts "Enter the 4th number:"
num_arr << gets.chomp.to_i

puts "Enter the 5th number:"
num_arr << gets.chomp.to_i

puts "Enter the last number:"
last_num = gets.chomp.to_i

if num_arr.inlcude?(last_num)
  puts "The number #{last_num} appears in #{num_arr}."
else
  puts "The number #{last_num} does not appear in #{num_arr}."
end
