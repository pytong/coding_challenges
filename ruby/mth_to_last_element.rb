# Challenge Description:
# https://www.codeeval.com/open_challenges/10

# Write a program which determines the Mth to the last element in a list.

# INPUT SAMPLE:

# The first argument is a path to a file. The file contains the series of space delimited characters followed by an integer. The integer represents an index in the list (1-based), one per line.

# For example:

# a b c d 4
# e f g h 2

# OUTPUT SAMPLE:

# Print to stdout the Mth element from the end of the list, one per line. If the index is larger than the number of elements in the list, ignore that input.

# For example:

# a
# g


File.open(ARGV[0]).each_line do |line|
 chars = line.split(" ")
 position = chars.pop.to_i
 
 next if position >  chars.length
 char = chars.at(chars.length - position)
 puts char
end



