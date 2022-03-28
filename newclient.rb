class NewClient
require 'csv'

# define functions
def get_input(message)
    print message
    print "\n"
    user_input = gets.chomp
  # errors stuff here!! - loop
end

puts "Well done on getting a new client!"
exit = false
while exit == false

    puts "Which trainers file would you like to add to? (trainer1, trainer2 or trainer3)?"
    trainer = gets.chomp
    puts "You selected #{trainer}"

    case trainer
    when "trainer1"
        name = get_input('What is the clients name?')
        puts "Your answer is #{name}"

        injury = get_input('Does the client have an injury? Y/N')
        puts "Your answer is #{injury}"
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts "Your answer is #{body}"

        CSV.open("trainer1.csv", "a+") do |csv|
             csv << [name, injury, body]
        end
    # message of saving - ends

    when "trainer2"
        name = get_input('What is the clients name?')
        puts "Your answer is #{name}"

        injury = get_input('Does the client have an injury? Y/N')
        puts "Your answer is #{injury}"
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts "Your answer is #{body}"

        CSV.open("trainer2.csv", "a+") do |csv|
             csv << [name, injury, body]
        end
    # message of saving - ends

    when "trainer3"
        name = get_input('What is the clients name?')
        puts "Your answer is #{name}"

        injury = get_input('Does the client have an injury? Y/N')
        puts "Your answer is #{injury}"
        # no skips to end message

        body = get_input('What area of the body is the clients injury?')
        puts "Your answer is #{body}"

        CSV.open("trainer3.csv", "a+") do |csv|
             csv << [name, injury, body]
        end
    # message of saving - ends

    when "exit"
            puts "Exit"
            exit = true
            system "clear"
    else
            puts "This is not a trainer! Please choose a valid option"
    end
end
end
