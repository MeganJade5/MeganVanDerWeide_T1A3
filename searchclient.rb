require 'csv'

# define functions

def user_search_name(search)
    print search
    print "\n"
    name_search = gets.chomp
end

# user search name

# user input client name
name_search = user_search_name('What is the clients last name that you are searching for?')
puts "Your answer is #{name_search}"
# validate what user typed in

# loop to input question if invalid
# output message to confirm
# if no, loop to user input client and exit?
# output selected clients info
name_search = CSV.read('trainer1.csv')
p name_search[1] [2] [3]

# read multiple CSV files???
