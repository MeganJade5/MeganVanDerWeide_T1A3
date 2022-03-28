require "csv"

def get_input(message)
    print message
    print "\n"
    user_input = gets.chomp
  # errors stuff here!! - loop
end

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
