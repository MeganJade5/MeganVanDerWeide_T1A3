# gems
require 'tty-prompt'
require 'tty-font'
require 'rainbow'
require 'csv'
require './methods/Information'

# get input from user
def get_input(message)
    print message
    print "\n"
    user_input = gets.chomp
  # errors stuff here!! - loop
end

# font for the exit message
def print_fancy(text)
  font = TTY::Font.new(:doom)
  puts font.write(text)
end

def user_search(message_to_search)
    print message_to_search
    print "\n"
    search_input = gets.chomp
end

exit = false
while exit == false

# hello message
puts Rainbow('Hello Trainer!').blue
# while user wants to continue
# execute option menu
puts Rainbow('What would you like to do today?').blue

# options in terminal
puts Rainbow("Main Menu:").purple
print '1. Input a new client into the system', "\n"
print '2. View current clients information', "\n"
print '3. View injury information', "\n"
print '4. Update current clients information', "\n"
print '5. Remove a client from the system', "\n"
print '6. Exit', "\n"
user_choice = gets.chomp
puts Rainbow("You selected option #{user_choice}:").salmon

# main menu selection 1
case user_choice
when "1"
    puts Rainbow("Input a new client").purple
    # take user to new client module
    puts "Which trainers file would you like to add to? (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    puts Rainbow("You selected #{trainer}").salmon

    case trainer
    when "trainer1"
        first_name = get_input('What is the clients first name?')
        puts Rainbow("Your answer is #{first_name}").salmon

        last_name = get_input('What is the clients last name?')
        puts Rainbow("Your answer is #{last_name}").salmon

        injury = get_input('Does the client have an injury? Y/N')
        puts Rainbow("Your answer is #{injury}").salmon
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts Rainbow("Your answer is #{body}").salmon

        puts Rainbow("Your new client #{first_name} #{last_name} has now added to #{trainer}!\n").green

        CSV.open("trainer1.csv", "a+") do |csv|
            csv << [first_name, last_name, injury, body]
        end

    when "trainer2"
        first_name = get_input('What is the clients first name?')
        puts Rainbow("Your answer is #{first_name}").salmon

        last_name = get_input('What is the clients last name?')
        puts Rainbow("Your answer is #{last_name}").salmon

        injury = get_input('Does the client have an injury? Y/N')
        puts Rainbow("Your answer is #{injury}").salmon
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts Rainbow("Your answer is #{body}").salmon

        puts Rainbow("Your new client #{first_name} #{last_name} has now added to #{trainer}!\n").green

        CSV.open("trainer2.csv", "a+") do |csv|
            csv << [first_name, last_name, injury, body]
        end

    when "trainer3"
        first_name = get_input('What is the clients first name?')
        puts Rainbow("Your answer is #{first_name}").salmon

        last_name = get_input('What is the clients last name?')
        puts Rainbow("Your answer is #{last_name}").salmon

        injury = get_input('Does the client have an injury? Y/N')
        puts Rainbow("Your answer is #{injury}").salmon
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts Rainbow("Your answer is #{body}").salmon

        puts Rainbow("Your new client #{first_name} #{last_name} has now added to #{trainer}!\n").green

        CSV.open("trainer3.csv", "a+") do |csv|
            csv << [first_name, last_name, injury, body]
        end

    when "exit"
            puts print_fancy("Exit")
            exit = true
            system "clear"
    else
        puts Rainbow("This is not a trainer! Please choose a valid option").red
    end

# main menu selection 2
when "2"
    puts "View current client"
    # take user to view
    puts "Which trainers file would you like to access (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    puts Rainbow("You selected #{trainer}").salmon

    "trainer1"
    searchname = user_search('What is the clients last name?')
    puts "Your answer is #{searchname}"
    data = CSV.read('trainer1.csv')
    puts data.find.to_s { |row| row['last_name'] == searchname }
    p data[1]

    "trainer2"
    searchname = user_search('What is the clients last name?')
    puts "Your answer is #{searchname}"
    data = CSV.read('trainer2.csv')
    puts data.find { |row| row['last_name'] == searchname }
    p data[1]

    "trainer3"
    searchname = user_search('What is the clients last name?')
    puts "Your answer is #{searchname}"
    data = CSV.read('trainer3.csv')
    puts data.find { |row| row['last_name'] == searchname }
    p data[1]

    "exit"
    puts print_fancy("Exit")
    exit = true
    system "clear"
end

# main menu selection 3
case user_choice
when "3"
    puts "View injury info"
    if Information.list1 == 1
        system('clear')
        selection1 = 1
        selection2 = Information.list2
    else
        system('clear')
        selection1 = 2
        selection2 = Information.list2
    end
end
end
