# CAPITALIZE WORDS
# CHALLENGE DESCRIPTION:


# Write a program which capitalizes the first letter of each word in a sentence.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# Hello world
# javaScript language
# a letter
# 1st thing

# OUTPUT SAMPLE:

# Print capitalized words in the following way.

# Hello World
# JavaScript Language
# A Letter
# 1st Thing


File.open(ARGV[0]).each_line do |line|
  a = line.split.collect.each { |x| x[0].capitalize + x[1..-1] }
  puts a.join(' ')
end

  
