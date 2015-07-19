# Challenge Description:
# https://www.codeeval.com/open_challenges/43

# A sequence of n > 0 integers is called a jolly jumper if the absolute values of the differences between successive elements take on all possible values 1 through n - 1. eg. 
# 1 4 2 3 
# is a jolly jumper, because the absolute differences are 3, 2, and 1, respectively. The definition implies that any sequence of a single integer is a jolly jumper. Write a program to determine whether each of a number of sequences is a jolly jumper. 

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Each test case will contain an integer n < 3000 followed by n integers representing the sequence. The integers are space delimited.

# For example:

# 4 1 4 2 3
# 3 7 7 8
# 9 8 9 7 10 6 12 17 24 38

# OUTPUT SAMPLE:

# For each line of input generate a line of output saying 'Jolly' or 'Not jolly'.

# For example:

# Jolly
# Not jolly
# Not jolly


count = 1
File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  numbers = line.split(/ /)
  if numbers.size == 1
    puts 'Jolly'
    next
  end
  
  differences = Array.new(numbers.size)
  differences.fill(false)
  differences[0] = true
  result = ''
  
  for i in 1..numbers.length - 1 do
    abs_difference = (numbers[i].to_i - numbers[i - 1].to_i).abs
    differences[abs_difference] = true
  end
  puts (differences.select{|d| d == false}.size == 0 || count == 1 ? 'Jolly' : 'Not jolly')
  count = count + 1
end


