def get_client_data
    print 'Please enter your clients name: '
    return get_user_input ('Please try again: ') do |client_name|
        if client_name.empty?
                raise InvalidInputError, "Name must not be empty. Please try again"
        end
    end
end