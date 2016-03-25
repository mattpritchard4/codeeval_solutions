# AGE DISTRIBUTION
# CHALLENGE DESCRIPTION:

# You're responsible for providing a demographic report for your local school district based on age. To do this, you're going determine which 'category' each person fits into based on their age.
# The person's age will determine which category they should be in:

# If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms' 
# If they're 3 or 4 and should be in preschool print : 'Preschool Maniac' 
# If they're from 5 to 11 and should be in elementary school print : 'Elementary school' 
# From 12 to 14: 'Middle school' 
# From 15 to 18: 'High school' 
# From 19 to 22: 'College'
# From 23 to 65: 'Working for the man' 
# From 66 to 100: 'The Golden Years' 
# If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"
# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line of input contains one integer - age of the person:


File.open(ARGV[0]).each_line do |line|
  input = line.chomp.to_i
  if input.between?(0,2)
    puts "Still in Mama's arms"
  elsif input.between?(3,4)
    puts "Preschool Maniac"
  elsif input.between?(5,11)
    puts "Elementary school"
  elsif input.between?(12,14)
    puts "Middle school"
  elsif input.between?(15,18)
    puts "High school"
  elsif input.between?(19,22)
    puts "College"
  elsif input.between?(23,65)
    puts "Working for the man"
  elsif input.between?(66,100)
    puts "The Golden Years"
  else
    puts "This program is for humans"
  end
end
