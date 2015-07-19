# Challenge Description:
# https://www.codeeval.com/open_challenges/93

# Write a program which capitalizes the first letter of each word in a sentence.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# Hello world
# javaScript language
# a letter
# 1st thing
# OUTPUT SAMPLE:

# Print capitalized words in the following way.

# Hello World
# JavaScript Language
# A Letter
# 1st Thing


File.open(ARGV[0]).each_line do |line|
  words = line.split(" ")
  words.each_with_index do |word, index|
    chars = word.split("")
    chars[0] = chars[0].upcase
    words[index] = chars.join("")
  end
  
  puts words.join(" ")
end


