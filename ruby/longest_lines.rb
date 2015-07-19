# Challenge Description:
# https://www.codeeval.com/open_challenges/2

# Write a program which reads a file and prints to stdout the specified number of the longest lines that are sorted based on their length in descending order.

# INPUT SAMPLE:

# Your program should accept a path to a file as its first argument. The file contains multiple lines. The first line indicates the number of lines you should output, the other lines are of different length and are presented randomly. You may assume that the input file is formatted correctly and the number in the first line is a valid positive integer.

# For example:

# 2
# Hello World
# CodeEval
# Quick Fox
# A
# San Francisco

# OUTPUT SAMPLE:

# Print out the longest lines limited by specified number and sorted by their length in descending order.

# For example:

# San Francisco
# Hello World

line_count = 0
longest_lines = nil
nth_longest_line_idx = -1
nth_longest_line_length = -1
longest_lines = Array.new(line_count)

File.open(ARGV[0]).each_line.with_index do |line, line_number|
  if line_number == 0
    line_count = line.to_i
    next
  end
  
  line.strip!
  next if line.empty?
  
  if longest_lines.compact.size < line_count
    longest_lines << line
  elsif line.length > nth_longest_line_length
    nth_longest_line_length = longest_lines.compact.map(&:length).min
    nth_longest_line_idx = longest_lines.index{|l| l.length == nth_longest_line_length}
    longest_lines[nth_longest_line_idx] = line
  end
end

longest_lines = longest_lines.compact.sort!{|x,y| y.length <=> x.length}
puts longest_lines