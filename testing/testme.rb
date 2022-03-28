def get_input (invalid, &_block)
    begin
        puts "Enter the injured body part"
        user_input = gets.chomp
        yield user_input if block_given?

        # valid input
        valid = get_confirmation{"Is '#{user_input} correct (Y/N): "}

        raise InvalidInputError, invalid unless confirmation == 'Y'
    
    rescue InvalidInputError => e
        print e.message
        retry

    rescue TypeError
            it 'asks for input only once' do
        expect(user_input).not_to be_nil
    end
        return user_input
    end