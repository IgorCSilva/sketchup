if (5 > 3)
    puts '5 is greater than 3!'  
end

line = Sketchup.active_model.entities.add_line [0,0,0], [5,5,5]
if line
    puts "If you can read this, add_line completed successfully."
    puts "If not, line equals nil and you won't read this."
end

if (3 == 2)
    puts "Successful!"
elsif (2 < 3)
    puts "Nil!"
else
    puts 'The last option!'
end

# Obtain the current month
m = Time.new.month
# Set s equal to the current season in the Northern Hemisphere
s = if m < 4
    "winter"
elsif m < 7
    "spring"
elsif m < 10
    "summer"
else
    "fall"
end
# Display the value of s
puts s