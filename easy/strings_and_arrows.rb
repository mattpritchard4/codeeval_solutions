# STRINGS AND ARROWS
# CHALLENGE DESCRIPTION:

# You have a string composed of the following symbols: '>', '<', and '-'. Your task is to find, count, and print to the output a number of arrows in the string. An arrow is a set of the following symbols: '>>-->' or '<--<<'. 
# Note that one character may belong to two arrows at the same time. Such example is shown in the line #1.

# INPUT SAMPLE:

# The first argument is a path to a file. Each line includes a test case with a string of different length from 10 to 250 characters. The string consists of '>', '<', and '-' symbols.

# For example:


# <--<<--<<
# <<>>--><--<<--<<>>>--><
# <-->>

# OUTPUT SAMPLE:

# Print the total number of found arrows for each test case.

# For example:


# 2
# 4
# 0

# CONSTRAINTS:

# An arrow is a set of the following symbols: '>>-->' or '<--<<'.
# One symbol may belong to two arrows at the same time.
# The number of test cases is 40.



def arrow(string)
  if string == "<--<<" || string == ">>-->"
    true
  end
end

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(//)
  start = -1
  arrows = 0
  input.each do |x|
    start += 1
    final = start + 4
    try = (input[start..final]).to_a.join
    if arrow(try) == true
      arrows += 1
    end
  end
  puts arrows
end

