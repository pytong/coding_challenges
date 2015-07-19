# Challenge Description:
# https://www.codeeval.com/open_challenges/96

# Write a program which swaps letters' case in a sentence. All non-letter characters should remain the same.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# Hello world!
# JavaScript language 1.8
# A letter

# OUTPUT SAMPLE:

# Print results in the following way.

# hELLO WORLD!
# jAVAsCRIPT LANGUAGE 1.8
# a LETTER


File.open(ARGV[0]).each_line do |line|
  chars = line.chomp.split("")

  result = ""
  chars.each do |char|
    if char.upcase == char
      result << char.downcase
    else
      result << char.upcase
    end
  end
  
  puts result
  
end



