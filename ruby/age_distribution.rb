# Challenge Description:
# https://www.codeeval.com/open_challenges/152

# You're responsible for providing a demographic report for your local school district based on age. To do this, you're going determine which 'category' each person fits into based on their age.
# The person's age will determine which category they should be in:

# If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms' 
# If they're 3 or 4 and should be in preschool print : 'Preschool Maniac' 
# If they're from 5 to 11 and should be in elementary school print : 'Elementary school' 
# From 12 to 14: 'Middle school' 
# From 15 to 18: 'High school' 
# From 19 to 22: 'College'
# From 23 to 65: 'Working for the man' 
# From 66 to 100: 'The Golden Years' 
# If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line of input contains one integer - age of the person:

# 0
# 19

# OUTPUT SAMPLE:

# For each line of input print out where the person is:

# Still in Mama's arms
# College


File.open(ARGV[0]).each_line do |line|
  age = line.to_i
  if age >= 0 && age <= 2
    puts "Still in Mama's arms"
  elsif age >= 3 && age <= 4
    puts 'Preschool Maniac' 
  elsif age >= 5 && age <= 11
    puts 'Elementary school'
  elsif age >= 12 && age <= 14
    puts 'Middle school'
  elsif age >= 15 && age <= 18
    puts 'High school'
  elsif age >= 19 && age <= 22
    puts 'College'
  elsif age >= 23 && age <= 65
    puts 'Working for the man'
  elsif age >= 66 && age <= 100
    puts 'The Golden Years'
  else
    puts 'This program is for humans'
  end
end


