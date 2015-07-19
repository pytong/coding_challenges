# Challenge Description:
# https://www.codeeval.com/open_challenges/173

# In a given text, if there are two or more identical characters in sequence, delete the repetitions and leave only the first character.
# For example:
# Shellless mollusk lives in wallless house in wellness. Aaaarrghh!
# ↓
# Sheles molusk lives in wales house in welnes. Aargh!

File.open(ARGV[0]).each_line do |line|
  
  line.strip!

  last_char = ""
  result = []

  chars = line.split(//)
  chars.each do |char|
    if char != last_char
      last_char = char
      result << char
    end
  end

  puts result.join("")
end