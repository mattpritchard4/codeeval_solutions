# MORSE CODE
# CHALLENGE DESCRIPTION:


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


morse = { ".-" => "A",
          "-..." => "B",
          "-.-." => "C",
          "-.." => "D",
          "." => "E",
          "..-." => "F",
          "--." => "G",
          "...." => "H",
          ".." => "I",
          ".---" => "J",
          "-.-" => "K",
          ".-.." => "L",
          "--" => "M",
          "-." => "N",
          "---" => "O",
          ".--." => "P",
          "--.-" => "Q",
          ".-." => "R",
          "..." => "S",
          "-" => "T",
          "..-" => "U",
          "...-" => "V",
          ".--" => "W",
          "-..-" => "X",
          "-.--" => "Y",
          "--.." => "Z",
          "-----" => "0",
          ".----" => "1",
          "..---" => "2",
          "...--" => "3",
          "....-" => "4",
          "....." => "5",
          "-...." => "6",
          "--..." => "7",
          "---.." => "8",
          "----." => "9"
        }

File.open(ARGV[0]).each_line do |line|
a = line.chomp.split('  ').collect
for i in a
  b = i.split(' ').collect
  for o in b
    print morse[o]
  end
  print " "
end
puts
end




