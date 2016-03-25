# COUNTING PRIMES
# CHALLENGE DESCRIPTION:


# Given two integers N and M, count the number of prime numbers between N and M (both inclusive)

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.


# 2,10
# 20,30

# OUTPUT SAMPLE:

# Print out the number of primes between N and M (both inclusive)

# 4
# 2


require 'prime'

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(',').map(&:to_i)
  prime_range = Range.new(input[0], input[1])
  count = 0
  for i in prime_range
    if i.prime?
      count +=1
    end
  end
  puts count
end


