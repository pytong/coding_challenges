# Challenge Description:
# https://www.codeeval.com/open_challenges/30

# You are given two sorted list of numbers (ascending order). The lists themselves are comma delimited and the two lists are semicolon delimited. Print out the intersection of these two sets.

# INPUT SAMPLE:

# File containing two lists of ascending order sorted integers, comma delimited, one per line. E.g. 
# 1,2,3,4;4,5,6
# 20,21,22;45,46,47
# 7,8,9;8,9,10,11,12

# OUTPUT SAMPLE:

# Print out the ascending order sorted intersection of the two lists, one per line. Print empty new line in case the lists have no intersection. E.g. 
# 4

# 8,9


File.open(ARGV[0]).each_line do |line|
  lists = line.split(';')
  list_a = lists[0]
  list_b = lists[1]
  
  set_a = list_a.split(',')
  set_b = list_b.split(',')
  
  intersection = set_a & set_b
  
  result = ""
  intersection.each {|n| result += (n + ",")}
  result.chop!
  puts "#{result}\n"
end
