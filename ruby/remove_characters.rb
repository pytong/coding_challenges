# Challenge Description:
# https://www.codeeval.com/open_challenges/13

# Write a program which removes specific characters from a string.

# INPUT SAMPLE:

# The first argument is a path to a file. The file contains the source strings and the characters that need to be scrubbed. Each source string and characters you need to scrub are delimited by comma.

# For example:

# how are you, abc
# hello world, def

# OUTPUT SAMPLE:

# Print to stdout the scrubbed strings, one per line. Ensure that there are no trailing empty spaces on each line you print.

# For example:

# how re you
# hllo worl


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  tokens = line.split(',')
  text = tokens[0].strip
  scrubbed_chars = tokens[1].strip
  
  puts text.delete!(scrubbed_chars)
end
