# RIME PALINDROME
# CHALLENGE DESCRIPTION:


# Write a program which determines the largest prime palindrome less than 1000.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print to stdout the largest prime palindrome less than 1000.


require 'prime'
def palindrome(string)
  string == string.reverse
end

a = []
for i in (1..999)
  if i.prime? && palindrome(i.to_s) == true
    a << i
  end
end
puts a.last

