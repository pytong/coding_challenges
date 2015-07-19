# Challenge Description:
# https://www.codeeval.com/open_challenges/32

# There are two strings: A and B. Print 1 if string B occurs at the end of string A. Otherwise, print 0.

# INPUT SAMPLE:

# The first argument is a path to the input filename containing two comma-delimited strings, one per line. Ignore all empty lines in the input file.

# For example:

# Hello World,World
# Hello CodeEval,CodeEval
# San Francisco,San Jose

# OUTPUT SAMPLE:

# Print 1 if the second string occurs at the end of the first string. Otherwise, print 0.

# For example:

# 1
# 1
# 0


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  tokens = line.split(',')
  text = tokens[0]
  substring = tokens[1]
  
  puts (text.rindex(substring) == text.length - substring.length ? 1 : 0)
end




