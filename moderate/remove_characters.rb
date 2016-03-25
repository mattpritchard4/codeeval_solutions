# Challenge Description:

# The first argument is a path to a file. The file contains the characters
# that need to be scrubbed. Each source string and characters you to scrub
# are delimited by a comma. Print to stdout the scrubbed strings, one per line.
# Ensure that there are no trailing empty spaces on each line you print.

File.open(ARGV[0]).each_line do |line|
  input = line.chomp.split(',')
  input[1].strip!
  unscrubbed = input[0]
  scrub = input[1]
  puts unscrubbed.delete scrub 
end
