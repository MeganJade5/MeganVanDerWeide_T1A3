def get_input (invalid, &_block)
    begin
        user_input = gets.chomp
        yield user_input if block_given?

        confirmation = get_confirmation{"Is '#{user_input} correct (Y/N): "}

        raise InvalidInputError, invalid unless confirmation == 'Y'
    
    rescue InvalidInputError => e
        print e.message
        retry
    end
        return user_input
    end