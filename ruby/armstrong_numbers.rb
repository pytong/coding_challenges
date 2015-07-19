# Challenge Description:
# https://www.codeeval.com/open_challenges/82

# An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. Determine if the input numbers are Armstrong numbers.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file has a positive integer. E.g.

# 6
# 153
# 351

# OUTPUT SAMPLE:

# Print out True/False if the number is an Armstrong number or not. E.g.

# True
# True
# False


File.open(ARGV[0]).each_line do |line|
  line.chomp!
  number = line.to_i
  chars = line.split(//)

  sum = 0
  chars.each do |char|
    sum = sum + (char.to_i ** chars.length)
  end

  result = (number == sum ? "True" : "False")
  puts result
end
