# Challenge Description:
# https://www.codeeval.com/open_challenges/107

# Write a program to determine the shortest repetition in a string. 
# A string is said to have period p if it can be formed by concatenating one or more repetitions of another string of length p. For example, the string "xyzxyzxyzxyz" has period 3, since it is formed by 4 repetitions of the string "xyz". It also has periods 6 (two repetitions of "xyzxyz") and 12 (one repetition of "xyzxyzxyzxyz").

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line will contain a string of up to 80 non-blank characters. E.g.

# abcabcabcabc
# bcbcbcbcbcbcbcbcbcbcbcbcbcbc
# dddddddddddddddddddd
# adcdefg

# OUTPUT SAMPLE:

# Print out the smallest period of the input string. E.g.

# 3
# 2
# 1
# 7


File.open(ARGV[0]).each_line do |line|
  chars = line.chomp.split("")

  result = chars.length
  for i in 0..chars.length - 1
    substr_length = chars[0..i].length

    potential_repetitions = chars.length / (i + 1)
    
    if chars[0..i] * potential_repetitions == chars
      result = substr_length
      break
    end
  end
  puts result
  
end


