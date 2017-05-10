# Write a method that takes one argument, a positive integer, and
# returns the sum of its digits.

def sum(num)
  sum = 0
  num.to_s.split('').each do |number|
    sum += number.to_i
  end
  sum
end

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs
#  (while, until, loop, and each).
def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
