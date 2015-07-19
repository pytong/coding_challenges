# Challenge Description:
# https://www.codeeval.com/open_challenges/33

# A double-square number is an integer X which can be expressed as the sum of two perfect squares. For example, 10 is a double-square because 10 = 3^2 + 1^2. Your task in this problem is, given X, determine the number of ways in which it can be written as the sum of two squares.

# For example, 10 can only be written as 3^2 + 1^2 (we don't count 1^2 + 3^2 as being different). On the other hand, 25 can be written as 5^2 + 0^2 or as 4^2 + 3^2. 
# NOTE: Do NOT attempt a brute force approach. It will not work. The following constraints hold: 
# 0 <= X <= 2147483647 
# 1 <= N <= 100

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. You should first read an integer N, the number of test cases. The next N lines will contain N values of X.

# 5
# 10
# 25
# 3
# 0
# 1

# OUTPUT SAMPLE:

# E.g.

# 1
# 2
# 0
# 1
# 1


File.open(ARGV[0]).each_line.with_index do |line, index|
  if index == 0
    num_test_cases = line.to_i
    next
  end
  
  number = line.to_i
  
  biggest_possible_sqrt = Math.sqrt(number).to_i
  appeared = Array.new(biggest_possible_sqrt + 1)
  appeared.fill(false)
  count = 0
  
  for i in 0..biggest_possible_sqrt do
    smaller_sqrt = i
    larger_sqrt = Math.sqrt(number - smaller_sqrt ** 2).to_i
    
    next if appeared[larger_sqrt] == true
    
    if i ** 2 + larger_sqrt ** 2 == number
      if appeared[larger_sqrt] == false
        appeared[larger_sqrt] = true
        appeared[smaller_sqrt] = true
        count = count + 1
      end
    end
  end
  puts count
end




