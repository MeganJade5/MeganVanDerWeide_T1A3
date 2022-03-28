require './user_input'

describe Input do
    let (:input) {Input.new("y")}
    
    it 'asks for input only once' do
        expect(user_input).not_to be_nil
    end
end