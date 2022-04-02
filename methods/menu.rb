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
require './main'

def help
    print 'Please enter your clients name: '
    return get_user_input('Please try again: ') do |client_name|
    raise InvalidInputError, "Name must not be empty. Please try again" if client_name.empty?
end

def delete_client1(data)
    table = CSV.table('trainer1.csv')
    table.delete_if { |row| row[:last_name] == data }
    File.write('trainer1.csv', table.to_csv)
end

def delete_client2(data)
table = CSV.table('trainer2.csv')
table.delete_if { |row| row[:last_name] == data }
File.write('trainer2.csv', table.to_csv)
end

def delete_client3(data)
    table = CSV.table('trainer3.csv')
    table.delete_if { |row| row[:last_name] == data }
    File.write('trainer3.csv', table.to_csv)
end

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
end