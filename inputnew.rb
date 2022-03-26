puts "Well done on getting a new client!"
exit = false
while exit == false

    puts "Which trainers file would you like to add to? (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    puts "You selected #{trainer}"

    case trainer
    when "trainer1"
        puts "What is your new clients name?"
        File.open("trainer1.txt", "a") do |file|
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here
        puts "The new client #{name} has been added"
        end

    when "trainer2"
        puts "What is your new clients name?"
        File.open("trainer2.txt", "a") do |file|
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here
        puts "The new client #{name} has been added"
        end

    when "trainer3"
        puts "What is your new clients name?"
        File.open("trainer3.txt", "a") do |file|
        name = gets
        name = name.chomp
        file.write name  # writing the new name to the file here
        puts "The new client #{name} has been added"
        end

    when "exit"
        puts "Exit"
        exit = true
        system "clear"
    else
        puts "This is not a trainer! Please choose a valid option"
    end
end
