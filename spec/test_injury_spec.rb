require './injury'

describe Injury do
    let(:injury) { Injury.new("knee") }

    it 'can be instantiated' do
        expect(injury).not_to be_nil
        expect(injury).to be_an_instance_of Injury
    end
    describe '.body' do
        it 'returns the injury' do
         expect(injury.body).to eq 'knee'
        end
end