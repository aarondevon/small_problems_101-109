# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

def century(year)
  century = year
  if year % 100 != 0
    century = year / 100 + 1
  else
    century = year / 100
  end

  cent_arr = century.to_s.split('')

  if cent_arr.length > 1
    cent = [cent_arr[cent_arr.length - 2], cent_arr.last].join
  end

  if cent == '11'
    return "#{century}th"
  elsif cent == '12'
    return "#{century}th"
  elsif cent == '13'
    return "#{century}th"
  elsif cent_arr.last == '1'
    return "#{century}st"
  elsif cent_arr.last == '2'
    return "#{century}nd"
  elsif cent_arr.last == '3'
    return "#{century}rd"
  else
    return "#{century}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
