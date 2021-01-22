require 'player'

describe Player do

  describe 'name' do
    it 'returns the player name' do
      player = Player.new('Salar')
      expect(player.name).to eq 'Salar'
    end
  end

  describe 'health' do
    player = Player.new('Morne')

    it 'returns the players health' do
      expect(player.health).to eq described_class::DEFAULT_HEALTH
    end

    it 'can be reduced by damage' do
      expect { player.receive_damage(10) }.to change { player.health }.by(-10)
    end
  end
end
