# THE MAJOR ELEMENT
# CHALLENGE DESCRIPTION:

# The major element in a sequence with the length of L is the element which appears in a sequence more than L/2 times. The challenge is to find that element in a sequence.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line of the file contains a sequence of integers N separated by comma.


# OUTPUT SAMPLE:

# For each sequence print out the major element or print "None" in case there is no such element.

File.open(ARGV[0]).each_line do |line|

  input = line.chomp.split(',').map(&:to_i)
  count = Hash.new(0)
  breadth = input.length
  threshold = breadth / 2

  input.each do |v|
    count[v] += 1
  end

  sorted = count.sort_by { |key, value| value }
  major = sorted.last
  if major[1] > threshold
    puts major[0]
  else
    puts "None"
  end
  
end

