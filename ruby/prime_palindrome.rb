# Challenge Description:
# https://www.codeeval.com/open_challenges/3

# Write a program which determines the largest prime palindrome less than 1000.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print to stdout the largest prime palindrome less than 1000.

# 929


def is_prime(number)
  for i in 2..Math.sqrt(number).to_i
    return false if number % i == 0
  end
  return true
end

def is_palindrome(number)
  digits = number.to_s.split(//)
  i = 0
  j= digits.length - 1
  
  while i < j do
    return false if digits[i] != digits[j]
    i+=1
    j-=1 
  end
  return true
end

i = 1000
while i > 0 do
  if is_prime(i) && is_palindrome(i)
    puts i
    break
  end
  i-=1
end
