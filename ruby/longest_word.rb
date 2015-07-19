# Challenge Description:
# https://www.codeeval.com/open_challenges/111

# In this challenge you need to find the longest word in a sentence. If the sentence has more than one word of the same length you should pick the first one.
# INPUT SAMPLE:
# Your program should accept as its first argument a path to a filename. Input example is the following
# some line with text
# another line
# Each line has one or more words. Each word is separated by space char.

# OUTPUT SAMPLE:
# Print the longest word in the following way.
# some
# another


File.open(ARGV[0]).each_line do |line|
  
  line.strip!

  words = line.split(/ /)
  longest_word = ""
  longest_length = 0

  words.each do |word|
    if word.length > longest_length
      longest_length = word.length
      longest_word = word
    end
  end

  puts longest_word
end