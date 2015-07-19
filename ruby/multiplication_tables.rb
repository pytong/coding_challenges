# Challenge Description:
# https://www.codeeval.com/open_challenges/23

# Print out the grade school multiplication table upto 12*12.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

# 1   2   3   4   5   6   7   8   9  10  11  12
# 2   4   6   8  10  12  14  16  18  20  22  24
# 3   6   9  12  15  18  21  24  27  30  33  36


for i in 1..12 do
  line = ""
  for j  in 1..12 do
    result = i * j
    num_spaces = 4 - result.to_s.length
    num_spaces.times {|n| line = line + " "}
    line = line + result.to_s
  end
  puts line.rstrip
end



