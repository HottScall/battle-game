require 'player'

describe Player do
    subject(:player_1_name) {Player.new('player_1_name')}
    subject(:player_2_name) {Player.new('player_2_name')}

  describe '#name' do
    it 'returns the name' do
      expect(player_1_name).to eq 'player_1_name'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1_name.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end


  describe '#attack' do
    it 'damages the player' do
      expect(player_2_name).to receive(:receive_damage)
      player_1_name.attack(player_2_name)
    end
  end

  describe '#recieve_damage' do
    it 'reduces the players hit points' do
      expect{player_1_name.receive_damage}.to change {player_1_name.hit_points}.by(-10)
    end
  end
end
