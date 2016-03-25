# SUM OF INTEGERS FROM FILE
# CHALLENGE DESCRIPTION:


# Print out the sum of integers read from a file.

# INPUT SAMPLE:

# The first argument to the program will be a path to a filename containing a positive integer, one per line. E.g.

# 5
# 12

# OUTPUT SAMPLE:

# Print out the sum of all the integers read from the file. E.g.

# 17

sum = 0
File.open(ARGV[0]).each_line do |line|
  x = line.split.map(&:to_i)
  x.each { |i| sum += i }
end
puts sum
