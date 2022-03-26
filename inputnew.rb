# file = File.open('client.txt', 'a')
# file << 'name'
# file.close

# File.open("client.txt").readlines.each do |line|
#   puts line
# end

puts "Well done on getting a new client!"
puts "Which trainers file would you like to open? (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    when "trainer1"
    File.open("trainer1.txt", "a") do |file|
        puts "What is your new clients name?"
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here

    when "trainer2"
    File.open("trainer1.txt", "a") do |file|
        puts "What is your new clients name?"
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here

    when "trainer3"
    File.open("trainer1.txt", "a") do |file|
        puts "What is your new clients name?"
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here
end




