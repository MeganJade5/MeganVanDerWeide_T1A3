require 'csv'

# define functions

def get_input(message)
    print message
    print "\n"
    user_input = gets.chomp
  # errors stuff here!! - loop
end

def user_search(message_to_search)
    print message_to_search
    print "\n"
    search_input = gets.chomp
end

exit = false
while exit == false

    puts "Which trainers file would you like to search in? (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    puts "You selected #{trainer}"

    case trainer
    when "trainer1"
        searchname = user_search('What is the clients last name?')
        puts "Your answer is #{searchname}"
        data = CSV.read('trainer1.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

    when "trainer2"
        searchname = user_search('What is the clients last name?')
        puts "Your answer is #{searchname}"
        data = CSV.read('trainer2.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

    when "trainer3"
        searchname = user_search('What is the clients last name?')
        puts "Your answer is #{searchname}"
        data = CSV.read('trainer2.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

    when "exit"
            puts "Exit"
            exit = true
            system "clear"
    else
            puts "This is not a trainer! Please choose a valid option"
    end
end

# user search name

# user input client name

# validate what user typed in

# loop to input question if invalid
# output message to confirm
# if no, loop to user input client and exit?
# output selected clients info

# read multiple CSV files???
