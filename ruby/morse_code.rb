# Challenge Description:
# https://www.codeeval.com/open_challenges/116

# You have received a text encoded with Morse code and want to decode it.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following:

# .- ...- ..--- .-- .... .. . -.-. -..-  ....- .....
# -... .... ...--

# Each letter is separated by space char, each word is separated by 2 space chars.

# OUTPUT SAMPLE:

# Print out decoded words. E.g.

# AV2WHIECX 45
# BH3

# You program has to support letters and digits only.


File.open(ARGV[0]).each_line do |line|
  words = []

  morse_words = line.split("  ")
  morse_words.each do |morse_word|
    morse_chars = morse_word.split(" ")
    
    word = []
    morse_chars.each do |morse_char|
      case morse_char
      when ".-"
          word << "A"
        when "-..."
          word << "B"
        when "-.-."
          word << "C"
        when "-.."
          word << "D"
        when "."
          word << "E"
        when "..-."
          word << "F"
        when "--."
          word << "G"
        when "...."
          word << "H"
        when ".."
          word << "I"
        when ".---"
          word << "J"
        when "-.-"
          word << "K"
        when ".-.."
          word << "L"
        when "--"
          word << "M"
        when "-."
          word << "N"
        when "---"
          word << "O"
        when ".--."
          word << "P"
        when "--.-"
          word << "Q"
        when ".-."
          word << "R"
        when "..."
          word << "S"
        when "-"
          word << "T"
        when "..-"
          word << "U"
        when "...-"
          word << "V"
        when ".--"
          word << "W"
        when "-..-"
          word << "X"
        when "-.--"
          word << "Y"
        when "--.."
          word << "Z"
        when "-----"
          word << "0"
        when ".----"
          word << "1"
        when "..---"
          word << "2"
        when "...--"
          word << "3"
        when "....-"
          word << "4"
        when "....."
          word << "5"
        when "-...."
          word << "6"
        when "--..."
          word << "7"
        when "---.."
          word << "8"
        when "----."
          word << "9"
        end
    end
    
    words << word.join
  end
  
  puts words.join(" ")
end



