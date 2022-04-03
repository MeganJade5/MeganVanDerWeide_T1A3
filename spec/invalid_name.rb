class InvalidNameError < StandardError
    def message
        "Name must not be empty. Please try again: "
    end 
end