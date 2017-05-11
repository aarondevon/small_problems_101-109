require 'date'

# Build a program that displays when the user will retire and how many
# years she has to work till retirement.

    # Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
current_age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

working_years = retirement_age - current_age

current_year = DateTime.now.year
retirement_year = current_year + working_years

puts "It's #{current_year}. You will retire in #{retirement_year}."

puts "You have only #{working_years} years of work to go!"