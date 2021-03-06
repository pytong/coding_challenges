# Challenge Description:
# https://www.codeeval.com/open_challenges/27

# You are given a decimal (base 10) number, print its binary representation.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename containing decimal numbers greater or equal to 0, one per line.

# Ignore all empty lines.

# For example:

# 2
# 10
# 67

# OUTPUT SAMPLE:

# Print the binary representation, one per line.

# For example:

# 10
# 1010
# 1000011


File.open(ARGV[0]).each_line do |line|
  integer = line.to_i
  puts integer.to_s(2)
end




