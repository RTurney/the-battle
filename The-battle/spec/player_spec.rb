require 'player'

describe Player do

  describe 'name' do
    it 'returns the player name' do
      player = Player.new('Salar')
      expect(player.name).to eq 'Salar'
    end
  end
end
