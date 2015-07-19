# Challenge Description:
# https://www.codeeval.com/open_challenges/7

# You are given a prefix expression. Write a program which evaluates it.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains one prefix expression per line.

# For example:

# * + 2 3 4

# Your program should read this file and insert it into any data structure you like. Traverse this data structure and evaluate the prefix expression. Each token is delimited by a whitespace. You may assume that sum ‘+’, multiplication ‘*’ and division ‘/’ are the only valid operators appearing in the test data.

# OUTPUT SAMPLE:

# Print to stdout the output of the prefix expression, one per line.

# For example:

# 20

# CONSTRAINTS:

# The evaluation result will always be an integer ≥ 0.
# The number of the test cases is ≤ 40.


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  first_integer = line[/\d+/]
  tokens = line.split(' ')
  
  first_integer_index = tokens.index(first_integer)
  
  result = first_integer.to_i
  integer_index = first_integer_index + 1
  operator_index = first_integer_index - 1
  
  while(operator_index >= 0) do
    if tokens[operator_index] == '+'
      result = result + tokens[integer_index].to_i
    elsif tokens[operator_index] == '*'
      result = result * tokens[integer_index].to_i
    end
    integer_index = integer_index + 1
    operator_index = operator_index - 1
  end
  puts result
end


