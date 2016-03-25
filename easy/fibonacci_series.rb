# -*- coding: undecided -*-
# FIBONACCI SERIES
# CHALLENGE DESCRIPTION:


# The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1. Given an integer n≥0, print out the F(n).

# INPUT SAMPLE:

# The first argument will be a path to a filename containing integer numbers, one per line. E.g.

# 5
# 12

# OUTPUT SAMPLE:

# Print to stdout, the fibonacci number, F(n). E.g.

# 5
# 144

File.open(ARGV[0]).each_line do |line|
  x = line.split.map(&:to_i)
  def fib(n)
    if n < 2
      return n
    else
      return fib(n-1) + fib(n-2)
    end
  end
  x.each { |i| puts fib(i) }
end

