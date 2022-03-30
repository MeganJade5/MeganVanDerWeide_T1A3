# gems
require 'tty-prompt'
require 'rainbow'
require 'csv'

# get input from user
def get_input(message)
    print message
    print "\n"
    user_input = gets.chomp
  # errors stuff here!! - loop
end

def print_fancy(text)
  font = TTY::Font.new(:doom)
  puts font.write(text)
end

# hello message
puts Rainbow('Hello Trainer!').blue
exit = false
while exit == false
    # while user wants to continue
    # execute option menu
    puts Rainbow('What would you like to do today?').blue

    # options in terminal
        puts Rainbow("Main Menu:").purple
        print '1. Input a new client into the system'"\n"
        print '2. View current clients information'"\n"
        print '3. View injury information'"\n"
        print '4. Update current clients information'"\n"
        print '5. Remove a client from the system'"\n"
        print '6. Exit'"\n"
        user_choice = gets.chomp
        puts Rainbow("You selected option #{user_choice}:").salmon

        # when user makes selection
        case user_choice
        when "1"
            puts Rainbow("Input a new client").purple
            # take user to new client module
            puts "Which trainers file would you like to add to? (trainer1, trainer2 or trainer3)?"
            trainer = gets.chomp
            puts Rainbow("You selected #{trainer}").salmon

            case trainer
            when "trainer1"
                first_name= get_input('What is the clients first name?')
                puts Rainbow("Your answer is #{first_name}").salmon

                last_name = get_input('What is the clients last name?')
                puts Rainbow("Your answer is #{last_name}").salmon

                injury = get_input('Does the client have an injury? Y/N')
                puts Rainbow("Your answer is #{injury}".salmon
                # no skips to end message

                body = get_input('What area of the body is the clients injury?')
                puts Rainbow("Your answer is #{body}").salmon

                CSV.open("trainer1.csv", "a+") do |csv|
                    csv << [first_name, last_name, injury, body]
                end
                puts "Your new #{first_name} #{last_name} client is now added to #{trainer}.\n"
                puts "Please enter 'exit' to return to the main menu"

            when "trainer2"
             first_name= get_input('What is the clients first name?')
                puts Rainbow("Your answer is #{first_name}").salmon

                last_name = get_input('What is the clients last name?')
                puts Rainbow("Your answer is #{last_name}").salmon

                injury = get_input('Does the client have an injury? Y/N')
                puts Rainbow("Your answer is #{injury}".salmon
                # no skips to end message

                body = get_input('What area of the body is the clients injury?')
                puts Rainbow("Your answer is #{body}").salmon

                CSV.open("trainer2.csv", "a+") do |csv|
                    csv << [first_name, last_name, injury, body]
                end
                puts "Your new #{first_name} #{last_name} client is now added to #{trainer}.\n"
                puts "Please enter 'exit' to return to the main menu"

            when "trainer3"
             first_name= get_input('What is the clients first name?')
                puts Rainbow("Your answer is #{first_name}").salmon

                last_name = get_input('What is the clients last name?')
                puts Rainbow("Your answer is #{last_name}").salmon

                injury = get_input('Does the client have an injury? Y/N')
                puts Rainbow("Your answer is #{injury}".salmon
                # no skips to end message

                body = get_input('What area of the body is the clients injury?')
                puts Rainbow("Your answer is #{body}").salmon

                CSV.open("trainer3.csv", "a+") do |csv|
                    csv << [first_name, last_name, injury, body]
                end
                puts "Your new #{first_name} #{last_name} client is now added to #{trainer}.\n"
                puts "Please enter 'exit' to return to the main menu"

            when "exit"
                    puts "Exit"
                    print_fancy('Seeya!')
                    exit = true
                    system "clear"
            else
                puts Rainbow("This is not a trainer! Please choose a valid option").red
            end

        when "2"
            puts "View current client"
            # take user to view
            puts "Which trainers file would you like to access (trainer1, trainer2 or trainer3)?"
            trainer = gets.chomp
            puts Rainbow("You selected #{trainer}").salmon

        when "3"
            puts "View injury info"

        when "4"
            puts "Update a client"

        when "5"
            puts "Remove a client"
        # user doesn't want to continue
        when "6"
            puts "Exit"
            print_fancy('Seeya!')
            exit = true
            system "clear"
        else
            puts "Please choose a valid option"
        end
    end