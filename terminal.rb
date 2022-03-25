def trainermenu
# hello message
    puts 'Hello Trainer'
    exit = false
    while exit == false
    # while user wants to continue 
    # execute option menu 
        puts 'What would you like to do today?'

    # options in terminal
        print '1. Input a new client into the system'"\n"
        print '2. View current clients exercise weights information'"\n"
        print '3. View current clients injury information'"\n"
        print '4. Update current clients exercise weights amounts'"\n"
        print '5. Remove a client from the system'"\n"
        print '6. Exit'
        user_choice = gets.chomp
        puts "You selected option #{user_choice}:"

    # when user makes selection
        case user_choice
        when "1"
            puts "Input a new client"
        when "2"
            puts "View exercise weights info"
        when "3"
            puts "View injury info"
        when "4"
            puts "Update weights amounts"
        when "5"
            puts "Remove a client"
        # user doesn't want to continue
        when "6"
            puts "Exit"
            exit = true
        else
            puts "Please choose a valid option"
            system "clear"
        end
    end
end

# Input a new client into the system"
    # let user input details
    # store
    # ask injuiry
    # store
# give option to look at recommended exercises 
    # show recommended
    # show avoid 


    # puts "2. View current clients exercise weights information"
    # puts "3. View current clients injury information"
    # puts "4. Update current clients exercise weights amounts"
    # puts "5. Remove a client from the system"