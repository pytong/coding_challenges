# Challenge Description:
# https://www.codeeval.com/open_challenges/12

# Write a program which finds the first non-repeated character in a string.

# INPUT SAMPLE:

# The first argument is a path to a file. The file contains strings.

# For example:

# yellow
# tooth

# OUTPUT SAMPLE:

# Print to stdout the first non-repeated character, one per line.

# For example:

# y
# h


File.open(ARGV[0]).each_line do |line|
  line.strip!
  
  characters = line.split(//)
  for i in 0..characters.length - 1 do
    if characters.select{|c| c == characters[i]}.size == 1
      puts characters[i]
      break
    end
  end
end



