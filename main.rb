# gems
require 'tty-prompt'
require 'tty-font'
require 'rainbow'
require 'csv'
require './methods/Information'
require './methods/prompts'
require 'json'

# get input from user
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

def delete_client(data)
    table = CSV.table('trainer1.csv')
    table.delete_if { |row| row[:last_name] == data }
    File.write('trainer1.csv', table.to_csv)
end

# hello message
pastel = Pastel.new
font = TTY::Font.new(:doom)
puts pastel.blue(font.write('Hello Trainer!'))
# while user wants to continue
# execute option menu

# User given the choice to read the help doc
if Prompts.help == true
    system('clear')
    File.foreach('help.txt') do |line|
        puts line
    end
    exit if Prompts.move_on == false && (Prompts.exit == true)
end
puts Rainbow('What would you like to do today?').blue

# options in terminal
puts Rainbow("Main Menu:").purple
print '1. Input a new client into the system', "\n"
print '2. View current clients information', "\n"
print '3. Get some injury guidance with a do/dont fact sheet', "\n"
print '4. Update current clients information', "\n"
print '5. Remove a client from the system', "\n"
print '6. Exit', "\n"
user_choice = gets.chomp
puts Rainbow("You selected option: #{user_choice}").salmon

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
    else
        puts Rainbow("This is not a trainer! Please choose a valid option").red
      # retry
    end

    # main menu selection 2
    case user_choice
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

    end

    # main menu selection 3
    case user_choice
    when "3"
        puts "Injury guidance facts!"
        def injurychoices
            prompt = TTY::Prompt.new
            choices = { "Knee Injury" => 1, "Lower Back Injury" => 2, "Kneck Injury" => 3, "Wrist Injury" => 3 }
            return prompt.select("Which injury would you like to view more about?", choices)
        end

        parsed = JSON.load_file('injuryinfo.json')
        p parsed[injurychoices - 1]
    end

    case user_choice
    when "4"
        puts "Update current clients information"
        prompt = TTY::Prompt.new
        inputs = prompt.select("What would you like to update?",
                               ["first name", "last name", "Injury Status", "location of injury"])

    end

    case user_choice
    when "5"
        puts Rainbow("Remove a client").red
        # take user to view
        puts "Which trainers file would you like to DELETE from? (trainer1, trainer2 or trainer3)?".upcase
        trainer = gets.chomp
        puts Rainbow("You selected #{trainer}").salmon

        "trainer1"
        searchname = user_search('What is the clients last name that you would like to delete?'.upcase)
        puts Rainbow("Are you sure you want to delete #{searchname}?".upcase).red
        Prompts.continue
        data = CSV.read('trainer1.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

        # delete here
        puts Rainbow("The client has been deleted").red
        delete_client(searchname)

        "trainer2"
        searchname = user_search('What is the clients last name that you would like to delete?')
        puts "Are you sure you want to delete #{searchname}?"
        Prompts.continue
        data = CSV.read('trainer2.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

        # delete here
        puts Rainbow("The client has been deleted").red
        delete_client(searchname)

        "trainer3"
        searchname = user_search('What is the clients last name that you would like to delete?')
        puts "Are you sure you want to delete #{searchname}?"
        Prompts.continue
        data = CSV.read('trainer3.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

        # delete here
        puts Rainbow("The client has been deleted").red
        delete_client(searchname)
    end

when "6"
     if Prompts.exit == false
            puts "here"
            exit if Prompts.exit == true
     end
end
