# WORD TO DIGIT
# CHALLENGE DESCRIPTION:


# Having a string representation of a set of numbers you need to print this numbers.

# All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. E.g.

# zero;two;five;seven;eight;four
# three;seven;eight;nine;two
# OUTPUT SAMPLE:

# Print numbers in the following way:

# 025784
# 37892


a = %w[0 1 2 3 4 5 6 7 8 9 ]
b = %w[zero one two three four five six seven eight nine]
hash = Hash[b.zip(a)]

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(';')
  input.each { |x| print  hash.fetch(x) }
  puts
end
