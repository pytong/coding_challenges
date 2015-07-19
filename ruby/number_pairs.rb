# Challenge Description:
# https://www.codeeval.com/open_challenges/34

# You are given a sorted array of positive integers and a number 'X'. Print out all pairs of numbers whose sum is equal to X. Print out only unique pairs and the pairs should be in ascending order

# INPUT SAMPLE:

# Your program should accept as its first argument a filename. This file will contain a comma separated list of sorted numbers and then the sum 'X', separated by semicolon. Ignore all empty lines. If no pair exists, print the string NULL e.g.

# 1,2,3,4,6;5
# 2,4,5,6,9,11,15;20
# 1,2,3,4;50

# OUTPUT SAMPLE:

# Print out the pairs of numbers that equal to the sum X. The pairs should themselves be printed in sorted order i.e the first number of each pair should be in ascending order. E.g.

# 1,4;2,3
# 5,15;9,11
# NULL


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  tokens = line.split(';')
  integers = tokens[0].split(',').map(&:to_i)
  sum = tokens[1].to_i
  
  pairs = Array.new
  largest_integer_appeared = -1
  for i in 0..integers.length - 1 do
    difference = sum - integers[i]
    if integers.include?(difference) && integers[i] < difference
      pairs << [integers[i], difference]
      largest_integer_appeared = difference
    end
  end
  result = ''
  for i in 0..pairs.length - 1 do
    result << "#{pairs[i][0]},#{pairs[i][1]};"
  end
  result.chop!
  
  puts (result.empty? ? 'NULL' : result)
end



