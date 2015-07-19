# Challenge Description:
# https://www.codeeval.com/open_challenges/17

# Write a program to determine the largest sum of contiguous integers in a list.

# INPUT SAMPLE:

# The first argument is a path to a filename containing a comma-separated list of integers, one per line.

# For example:

# -10,2,3,-2,0,5,-15
# 2,3,-2,-1,10

# OUTPUT SAMPLE:

# Print to stdout the largest sum. In other words, of all the possible contiguous subarrays for a given array, find the one with the largest sum, and print that sum.

# For example:

# 8
# 12


File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  
  integers = line.split(',')
  max_ending_here = max_so_far = 0
  for i in 0..integers.size - 1 do
    max_ending_here = [integers[i].to_i, max_ending_here + integers[i].to_i].max
    max_so_far =  [max_so_far, max_ending_here].max
  end
  puts max_so_far
end


