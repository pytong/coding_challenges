# Challenge Description:
# https://www.codeeval.com/open_challenges/16

# Write a program which determines the number of 1 bits in the internal representation of a given integer.

# INPUT SAMPLE:

# The first argument is a path to a file. The file contains integers, one per line.

# For example:

# 10
# 22
# 56

# OUTPUT SAMPLE:

# Print to stdout the number of ones in the binary form of each number.

# For example:

# 2
# 3
# 3


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  integer = line.to_i
  bits = integer.to_s(2).split(//)
  puts bits.select{|b| b.to_i == 1}.size
end




