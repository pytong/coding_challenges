# Challenge Description:
# https://www.codeeval.com/open_challenges/40

# A number is a self-describing number when (assuming digit positions are labeled 0 to N-1), the digit in each position is equal to the number of times that that digit appears in the number.

# INPUT SAMPLE:

# The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

# 2020
# 22
# 1210

# OUTPUT SAMPLE:

# If the number is a self-describing number, print out 1. If not, print out 0. E.g.

# 1
# 0
# 1

# For the curious, here's how 2020 is a self-describing number: Position '0' has value 2 and there is two 0 in the number. Position '1' has value 0 because there are not 1's in the number. Position '2' has value 2 and there is two 2. And the position '3' has value 0 and there are zero 3's.


File.open(ARGV[0]).each_line do |line|
  line.strip!
  digits = line.split(//)
  
  result = 1
  for i in 0..digits.length - 1 do
    if digits[i].to_i != digits.select{|d| d.to_i == i}.size
      result = 0
    end
  end
  puts result
end



