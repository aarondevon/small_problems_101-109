# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

def remove_spaces str
  p str
  str.split.join
end

def prompt str
  puts "==> #{str}"
end

prompt "Please write a word or multiple words:"
words = gets.chomp

prompt "There are #{(remove_spaces words).size} characters in \"#{words}.\""


# or

def prompt str
  puts "==> #{str}"
end

prompt "Please a write word or multiple words:"
words = gets.chomp

number_of_characters = words.delete(' ').size

prompt "There are #{number_of_characters} characters in \"#{words}.\""
