# Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(array)
  count_hash = {}
  array.each do |index|
    if count_hash.has_key?(index)
      next
    else
      count_hash[index] = 0
    end
    count_hash[index] = array.count(index)
  end
  count_hash.each {|key, value| puts "#{key} => #{value}"}
end

count_occurrences(vehicles)
