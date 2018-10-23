# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |val|
    total += val
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!{ |x,y| y <=> x }
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  num_dict = Hash.new

  arr.each do
    |val|
    if num_dict[val]
      num_dict[val] = num_dict[val] + 1
    else
      num_dict[val] = 1
    end
  end

  num_dict.each do
    |k, v|
    dif = n - k
    if num_dict[dif] && k == dif && num_dict[dif] > 1
        puts "We entered special case"
        return true
    elsif num_dict[dif] && k != dif
      return true
    end
  end

  return false
  end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s == ""
    return false
  end
  "bcdfghjklmnpqrstvwxyz".include?(s.chr.downcase)
end

def binary_multiple_of_4? s
  bin_regex = /^[10]+$/
  if s.match(bin_regex)
    if s[-2..-1] == "00" || s == "0"
      return true
    end
    return false
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
