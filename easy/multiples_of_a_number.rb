# MULTIPLES OF A NUMBER
# CHALLENGE DESCRIPTION:


# Given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x. Do not use division or modulo operator.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing a comma separated list of two integers, one list per line. E.g.

# 13,8
# 17,16

# OUTPUT SAMPLE:

# Print to stdout, the smallest multiple of n which is greater than or equal to x, one per line. E.g.

# 16
# 32

File.open(ARGV[0]).each_line do |line|
  x, n = line.split(',').map(&:to_i)

  smallest = n
  while smallest < x do
    multiple = 1
    while smallest + n * multiple * 2 < x
      multiple *= 2
    end
    smallest += n * multiple
  end
  puts smallest
end
