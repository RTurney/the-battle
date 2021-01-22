require 'game'

describe Game do
    subject(:game) { described_class.new }
    let(:player) { double :player }

    it { is_expected.to respond_to(:attack).with(1).argument }

    it 'allows a player to be attacked' do
        expect(player).to receive(:receive_damage)
        game.attack(player)
    end
end