# MULTIPLICATION TABLES
# CHALLENGE DESCRIPTION:


# Print out the grade school multiplication table upto 12*12.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

# 1   2   3   4   5   6   7   8   9  10  11  12
# 2   4   6   8  10  12  14  16  18  20  22  24
# 3   6   9  12  15  18  21  24  27  30  33  36

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

for i in a
  for o in b
    output = (i * o).to_s
    if output.length == 1
      print "   " + output
    elsif output.length == 2
      print "  " + output
    elsif output.length == 3
      print " " + output
    end
  end
  puts 
end
