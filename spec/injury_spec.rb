require './injury'

describe Injury do
    it 'can be instantiated' do
        injury = Injury.new("knee")
        expect(injury).not_to be_nil
        expect(person).to be_an_instance_of Injury
    end
    it 'returns the injury' do
        injury = Injury.new("back")
    end
end