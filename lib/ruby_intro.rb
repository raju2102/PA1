# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each {|a| sum += a}
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  end
  max1, max2 = arr[0] > arr[1] ? [arr[0], arr[1]] : [arr[1], arr[0]]
  arr[2..-1].each do |a|
    if a > max1
      max2 = max1
      max1 = a
    elsif a > max2
      max2 = a
    end
  end
  return max1 + max2
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  return false if arr.size == 1
  map = {}
  arr.each do |a|
    return true if map[number-a]
    map[a] = true
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return false if string.size == 0
  return string[0].downcase.match?(/[a-z]/) && !string[0].downcase.match?(/[aeiou]/)
end

def binary_multiple_of_4?(string)
  return false if string.empty? || string.match?(/[^01]/)
  return string[-2..-1] == "00" if string.size > 1
  return true if string.size == 1 && string[-1] == "0"
  return false
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, "isbn cannot be empty" if isbn == ""
    @isbn = isbn
    raise ArgumentError, "price cannot be 0" if price <= 0
    @price = price
  end
  def isbn
    return @isbn
  end
  def price
    return @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$#{format('%.2f', @price)}"
  end

end
