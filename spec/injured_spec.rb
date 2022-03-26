require './injured'

describe Injured do
    let (:injured) {Injured.new("y")}
    
    it 'asks for input only once' do
        expect(input).not_to be_nil
    end
end