class InvalidInputError <StandardError
    def message
        return 'Answer must not be empty'
    end
end
    
def get_input
    print 'Enter your answer: '
    user_input = gets.strip
    raise (InvalidInputError) if user_input.empty?
    
    user_input
end

begin
    foo = get_input
    puts "Your answer is #{foo}"
rescue InvalidInputError=> e
    puts e.message
    retry
end