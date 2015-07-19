# Challenge Description:
# https://www.codeeval.com/open_challenges/39

# A happy number is defined by the following process. Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers.

# INPUT SAMPLE:

# The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

# 1
# 7
# 22

# OUTPUT SAMPLE:

# If the number is a happy number, print out 1. If not, print out 0. E.g

# 1
# 1
# 0

# For the curious, here's why 7 is a happy number: 7->49->97->130->10->1. Here's why 22 is NOT a happy number: 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...


def is_happy(number)
  appeared = Array.new
  result = number
  
  while true do
    if result.to_i == 1
      return 1
    end
    
    digits = result.to_s.split(//)
    
    result = digits.inject(0){|sum, d| sum + d.to_i ** 2}
    
    if appeared.include?(result)
      return 0
    end
    
    appeared << result
  end
end

File.open(ARGV[0]).each_line do |line|
  puts is_happy(line.to_i)
end
