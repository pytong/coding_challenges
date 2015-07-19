# Challenge Description:
# https://www.codeeval.com/open_challenges/62

# Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.

# 20,6
# 2,3
# You may assume M will never be zero.

# OUTPUT SAMPLE:

# Print out the value of N Mod M


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  data = line.split(",")
  number = data[0].to_i
  divider = data[1].to_i

  while number >= divider
    number -= divider
  end
  puts number
end

