# ARMSTRONG NUMBERS
# CHALLENGE DESCRIPTION:


# An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. Determine if the input numbers are Armstrong numbers.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file has a positive integer. E.g.


# 6
# 153
# 351

# OUTPUT SAMPLE:

# Print out True/False if the number is an Armstrong number or not. E.g.


# True
# True
# False


File.open(ARGV[0]).each_line do |line|
  n = line.chomp.each_char.map(&:to_i)
  n_final = n.join.to_i
  power = n.length
  start = 0
  for i in n
    start += i ** power
  end
  if start == n_final
    puts "True"
  else
    puts "False"
  end
end


