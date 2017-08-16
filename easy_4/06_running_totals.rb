# first attempt
def running_total(arr)
  counter = 0

  if arr.length > 1
    loop do

      arr[counter + 1] = arr[counter] + arr[(counter + 1)]
      counter += 1
      break if counter == arr.length - 1
    end
  end
  arr
end

p running_total([2, 5, 13])  == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
