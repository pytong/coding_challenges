# Challenge Description:
# https://www.codeeval.com/open_challenges/21

# Given a positive integer, find the sum of its constituent digits.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing positive integers, one per line. E.g.

# 23
# 496

# OUTPUT SAMPLE:

# Print to stdout, the sum of the numbers that make up the integer, one per line. E.g.

# 5
# 19


File.open(ARGV[0]).each_line do |line|
  digits = line.split(//)
  puts digits.map{|d| d.to_i}.inject{|sum,d| sum + d}
end
