# Challenge Description:
# https://www.codeeval.com/open_challenges/104

# Having a string representation of a set of numbers you need to print this numbers.

# All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. E.g.

# zero;two;five;seven;eight;four
# three;seven;eight;nine;two

# OUTPUT SAMPLE:

# Print numbers in the following way:

# 025784
# 37892


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  words = line.split(";")
  
  words.each do |word|
    case word
    when "zero"
      print 0
    when "one"
      print 1
    when "two"
      print 2
    when "three"
      print 3
    when "four"
      print 4
    when "five"
      print 5
    when "six"
      print 6
    when "seven"
      print 7
    when "eight"
      print 8
    when "nine"
      print 9
    end
  end

  puts "\n"
end



