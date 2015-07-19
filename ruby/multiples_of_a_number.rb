# Challenge Description:
# https://www.codeeval.com/open_challenges/18

# Given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x. Do not use division or modulo operator.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing a comma separated list of two integers, one list per line. E.g.

# 13,8
# 17,16

# OUTPUT SAMPLE:

# Print to stdout, the smallest multiple of n which is greater than or equal to x, one per line. E.g.

# 16
# 32


File.open(ARGV[0]).each_line do |line|
  numbers = line.split(",")
  x = numbers[0].to_i
  n = numbers[1].to_i
  
  smallest_multiple = n
  while smallest_multiple < x
    smallest_multiple += n
  end
  puts smallest_multiple
end



