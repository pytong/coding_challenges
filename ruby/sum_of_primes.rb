# Challenge Description:
# https://www.codeeval.com/open_challenges/4

# CHALLENGE DESCRIPTION:

# Write a program which determines the sum of the first 1000 prime numbers.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print to stdout the sum of the first 1000 prime numbers.

# 3682913


def is_prime(n)
  sqrt = Math.sqrt(n).to_i
  for i in 2..sqrt do
    return false if n % i == 0
  end
  return true
end

count = 0
sum = 0
i = 2
while count < 1000
  if is_prime(i)
    sum += i
    count += 1
  end
  i+=1
end

puts sum



