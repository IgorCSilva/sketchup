
# Creating a file
new_file = File.new("C:/Users/IGOR/Documents/Codigar/Ruby/Programas/new_file.txt", "w+")

# Reading a file
file = File.open("C:/Users/IGOR/Documents/Codigar/Ruby/Programas/exFile.txt.txt", "r")
# puts file.getc
# puts file.getc.chr
# print file.getc
# puts file.getc.chr

# # Top of the file
# file.rewind
# buff = file.read
# puts buff
# sum = 0
# buff.each_byte { |b| 
#     sum = sum + b
# }
# puts sum

# # Top of the file
# file.rewind
# buffer = ''
# file.read 2, buffer
# puts buffer

file_write = File.open("C:/Users/IGOR/Documents/Codigar/Ruby/Programas/exFile.txt", "w+")
colors = ["Red", "Yellow", "Green", "Blue"]
file_write.puts colors

# Create/open a file in read-write mode
f = File.open "C:/Users/IGOR/Documents/Codigar/Ruby/Programas/closes.txt", "w+"
f.chmod 777
# Write an array of five Strings to the file
nums = ["One", "Two", "Three", "Four", "Five"]
f.puts nums
# Rewind the file, read its lines, and print the third line
f.rewind
arr = f.readlines
puts arr[2]
# Close the file
f.close
puts "Closed? " + f.closed?.to_s
# Delete the file
File.delete "C:/Users/IGOR/Documents/Codigar/Ruby/Programas/closes.txt"
puts "Exists? " + File.exists?("C:/Users/IGOR/Documents/Codigar/Ruby/Programas/closes.txt").to_s