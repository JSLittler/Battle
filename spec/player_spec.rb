require 'player'

describe Player do

  subject(:player_1) { described_class.new('Dave')}
  subject(:player_2) { described_class.new('Mittens')}

  it 'player name 1 is Dave' do
    expect(player_1.name).to eq 'Dave'
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(player_1.hp).to eq 60
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

end