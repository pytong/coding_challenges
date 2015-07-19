# Challenge Description:
# https://www.codeeval.com/open_challenges/76

# You are given two strings. Determine if the second string is a rotation of the first string.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated strings. E.g.

# Hello,lloHe
# Basefont,tBasefon

# OUTPUT SAMPLE:

# Print out True/False if the second string is a rotation of the first. E.g.

# True
# True


File.open(ARGV[0]).each_line do |line|
  words = line.chomp.split(",") 

  word1 = words[0]
  word2 = words[1]

  result = false
  for i in 0..word1.length - 1
    if (word1[i + 1..word1.length - 1] << word1[0..i]) == word2
      result = true
      break
    end
  end
  
  if result == true
    puts "True"
  else
    puts "False"
  end
 
end
