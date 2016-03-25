# COMPRESSED SEQUENCE
# CHALLENGE DESCRIPTION:

# Assume that someone dictates you a sequence of numbers, and you need to write it down. For brevity, he dictates it as follows: first he dictates the number of consecutive identical numbers, and then - the number itself.

# For example:
# The sequence below

# 1 1 3 3 3 2 2 2 2 14 14 14 11 11 11 2
# is dictated as follows:

# two times one, three times three, four times two, three times fourteen, three times eleven, one time two
# and you have to write down the sequence

# 2 1 3 3 4 2 3 14 3 11 1 2
# Your task is to write a program that compresses a given sequence using this approach.



File.open(ARGV[0]).each_line do |line| 
  input = line.chomp.split.map(&:to_i)
  count = 0
  index = 0
  for i in input
    repeat = i
    count += 1
    index += 1
    test = input[index]
    if test != repeat
      print "#{count} #{repeat} "
      count = 0
    end
  end
  puts
end


