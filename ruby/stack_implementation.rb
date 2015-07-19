# Challenge Description:
# https://www.codeeval.com/open_challenges/9

# Write a program which implements a stack interface for integers. The interface should have ‘push’ and ‘pop’ functions. Your task is to ‘push’ a series of integers and then ‘pop’ and print every alternate integer.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains a series of space delimited integers, one per line.

# For example:

# 1 2 3 4
# 10 -2 3 4

# OUTPUT SAMPLE:

# Print to stdout every alternate space delimited integer, one per line.

# For example:

# 4 2
# 4 -2


class Stack
  def initialize
    @stack = Array.new
  end
  
  def push(item)
    @stack.push(item)
  end
  
  def pop
    @stack.pop
  end
  
  def count
    @stack.length
  end
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  stack = Stack.new
  numbers = line.split(' ')
  for i in 0..numbers.length - 1 do
    stack.push(numbers[i])
  end
  
  result = ''
  while stack.count > 0 do
    result << (stack.pop + ' ')
    stack.pop
  end
  puts result.strip!
end

