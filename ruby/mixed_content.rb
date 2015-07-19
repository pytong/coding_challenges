# Challenge Description:
# https://www.codeeval.com/open_challenges/115

# You have a string of words and digits divided by comma. Write a program which separates words with digits. You shouldn't change the order elements.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# 8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21
# 24,13,14,43,41

# OUTPUT SAMPLE:

# melon,apricot,peach,pineapple|8,33,21,0,16,50,37,0,7,17,21
# 24,13,14,43,41
# As you cas see you need to output the same input string if it has words only or digits only.


File.open(ARGV[0]).each_line do |line|
  words = []
  digits = []

  strings = line.split(",")
  strings.each do |string|
    string.chomp!
    if string.to_i.to_s == string
      digits << string
    else
      words << string
    end
  end

  if words.empty? && digits.empty?
    puts ""
  elsif words.empty?
    puts digits.join(",")
  elsif digits.empty?
    puts words.join(",")
  else
    puts [words.join(","), digits.join(",")].join("|")
  end
end


