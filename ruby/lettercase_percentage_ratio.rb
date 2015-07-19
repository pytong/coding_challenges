# Challenge Description:
# https://www.codeeval.com/open_challenges/147

# Your task is to write a program which determines (calculates) the percentage ratio of lowercase and uppercase letters.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. Each line of input contains a string with uppercase and lowercase letters.

# For example:

# thisTHIS
# AAbbCCDDEE
# N
# UkJ

# OUTPUT SAMPLE:

# For each line of input, print the percentage ratio of uppercase and lowercase letters rounded to the second digit after the point.

# For example:

# lowercase: 50.00 uppercase: 50.00
# lowercase: 20.00 uppercase: 80.00
# lowercase: 0.00 uppercase: 100.00
# lowercase: 33.33 uppercase: 66.67


File.open(ARGV[0]).each_line do |line|
  chars = line.chomp.split("")
  upcase_chars = line.upcase.split("")
  lowcase_chars = line.downcase.split("")
  
  num_lowcase = 0
  upcase_chars.each_with_index do |upcase_char, index|
    num_lowcase = num_lowcase + 1 if upcase_char != chars[index] && chars[index] =~ /[a-zA-Z]/
  end
  
  num_upcase = 0
  lowcase_chars.each_with_index do |lowcase_char, index|
    num_upcase = num_upcase + 1 if lowcase_char != chars[index] && chars[index] =~ /[a-zA-Z]/
  end
  
  word_length = chars.length

  lowcase_percent = ((num_lowcase.to_f / word_length) * 100).round(2)
  upcase_percent = ((num_upcase.to_f / word_length) * 100).round(2)

  puts "lowercase: #{'%.2f' % lowcase_percent} uppercase: #{'%.2f' % upcase_percent}"
end


