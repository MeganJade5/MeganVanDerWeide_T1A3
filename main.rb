# gems
require 'tty-prompt'
require 'tty-font'
require 'rainbow'
# files
require 'csv'
require 'json'
# linked
require './methods/Information'
require './methods/prompts'
require './methods/menu'

 def input_new_client()
    exit = false
    while exit == false
        puts Rainbow("Input a new client").purple
        # take user to new client module
        # option to put new client into different trainer csv
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

            body = get_input('If yes, what area of the clients body is injured? (if none, put N/A.)')
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

            body = get_input('If yes, what area of the clients body is injured? (if none, put N/A.)')
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

            body = get_input('If yes, what area of the clients body is injured? (if none, put N/A.)')
            puts Rainbow("Your answer is #{body}").salmon

            puts Rainbow("Your new client #{first_name} #{last_name} has now added to #{trainer}!\n").green

            CSV.open("trainer3.csv", "a+") do |csv|
                csv << [first_name, last_name, injury, body]
            end
        else
            puts Rainbow("This is not a trainer! Please choose a valid option").red
        # retry
        end
        exit if Prompts.move_on == false && (Prompts.exit == true)
    end
end

# main menu selection 2
def view_client
    exit = false
    while exit == false
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

            exit if Prompts.move_on == false && (Prompts.exit == true)
    end
end

# main menu selection 3
def injury_menu
    exit = false
    while exit == false
            puts "Injury guidance facts!"
            def injurychoices
                prompt = TTY::Prompt.new
                choices = { "Knee Injury" => 1, "Lower Back Injury" => 2, "Kneck Injury" => 3,
                            "Wrist Injury" => 3 }
                return prompt.select("Which injury would you like to view more about?", choices)
            end

            parsed = JSON.load_file('injuryinfo.json')
            p parsed[injurychoices - 1]
    end
    exit if Prompts.move_on == false && (Prompts.exit == true)
end

# main menu selection 4
def remove(_remove)
exit = false
while exit == false
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
        delete_client1(searchname)

        "trainer2"
        searchname = user_search('What is the clients last name that you would like to delete?')
        puts "Are you sure you want to delete #{searchname}?"
        Prompts.continue
        data = CSV.read('trainer2.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

        # delete here
        puts Rainbow("The client has been deleted").red
        delete_client2(searchname)

        "trainer3"
        searchname = user_search('What is the clients last name that you would like to delete?')
        puts "Are you sure you want to delete #{searchname}?"
        Prompts.continue
        data = CSV.read('trainer3.csv')
        puts data.find.to_s { |row| row['last_name'] == searchname }
        p data[1]

        # delete here
        puts Rainbow("The client has been deleted").red
        delete_client3(searchname)

        exit if Prompts.move_on == false && (Prompts.exit == true)
end
end

begin
    # CLI arguments
    arguments = ARGV
    if (arguments & ['--h', '--help']).any?
        File.foreach('./text_files/help.txt') do |line|
            puts line
        end
        exit
    elsif (arguments & ['--g', '--gems']).any?
        File.foreach('./Gemfile') do |line|
            puts line if line.include?('gem')
        end
        exit
    end

    # hello message
    pastel = Pastel.new
    font = TTY::Font.new(:doom)
    puts pastel.blue(font.write('Hello Trainer!'))

    # User given the choice to read the help doc
    if Prompts.help == true
        system('clear')
        File.foreach('help.txt') do |line|
            puts line
        end
        exit if Prompts.move_on == false && (Prompts.exit == true)
    end
    # menu starts here
    puts Rainbow('What would you like to do today?').blue

loop do
        # options in terminal
        puts Rainbow("Main Menu:").purple
        print '1. Input a new client into the system', "\n"
        print '2. View current clients information', "\n"
        print '3. Get some injury guidance with a do/dont fact sheet', "\n"
        print '4. Remove a client from the system', "\n"
        print '5. Exit', "\n"
        # else puts Rainbow("This is not a choice! Please choose a valid option").red
        user_choice = gets.chomp
        # retry
        puts Rainbow("You selected option: #{user_choice}").salmon

        # main menu selection 1
        case user_choice
        when "1"
            input_new_client()
        # takes to new client options
        when "2"
            view_client
        # takes to
        when "3"
            # takes to
            injury_menu
        when "4"
            # takes to
            remove(_remove)
        when "5"
            exit
        end
end
end