# Challenge Description:
# https://www.codeeval.com/open_challenges/92

# Write a program which finds the next-to-last word in a string.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# some line with text
# another line
# Each line has more than one word.

# OUTPUT SAMPLE:

# Print the next-to-last word in the following way.

# with
# another

File.open(ARGV[0]).each_line do |line|
  words = line.split(" ")
  
  puts words[words.length - 2]
end
