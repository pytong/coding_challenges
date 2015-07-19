# Challenge Description:
# https://www.codeeval.com/open_challenges/1

# Players generally sit in a circle. The first player says the number “1”, and each player says next number in turn. However, any number divisible by X (for example, three) is replaced by the word fizz, and any divisible by Y (for example, five) by the word buzz. Numbers divisible by both become fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

# Write a program that prints out the final series of numbers where those divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains multiple separated lines; each line contains 3 numbers that are space delimited. The first number is the first divider (X), the second number is the second divider (Y), and the third number is how far you should count (N). You may assume that the input file is formatted correctly and the numbers are valid positive integers.

# For example:

# 3 5 10
# 2 7 15

# OUTPUT SAMPLE:

# Print out the series 1 through N replacing numbers divisible by X with “F”, numbers divisible by Y with “B” and numbers divisible by both with “FB”. Since the input file contains multiple sets of values, your output should print out one line per set. Ensure that there are no trailing empty spaces in each line you print.

# 1 2 F 4 B F 7 8 F B
# 1 F 3 F 5 F B F 9 F 11 F 13 FB 15
# CONSTRAINTS:

# The number of test cases ≤ 20
# "X" is in range [1, 20]
# "Y" is in range [1, 20]
# "N" is in range [21, 100]


File.open(ARGV[0]).each_line do |line|
  inputs = line.split
  a = inputs[0].to_i
  b = inputs[1].to_i
  n = inputs[2].to_i
  
  for i in 1..n do
    if i % a == 0 && i % b == 0
      print "FB "
    elsif i % a == 0
      print "F "
    elsif i % b == 0
      print "B "
    else
      print "#{i} "
    end
  end
  puts "\n"
end
