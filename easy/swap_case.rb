# Write a program which swaps letters' case in a sentence. All non-letter 
# characters should remain the same.  Your program shoud accept as its first
# argument a path to a filename.

File.open(ARGV[0]).each_line do |line|
  input = line.chomp
  puts input.swapcase
end
