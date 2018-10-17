require 'player'

describe Player do

  subject(:player_1) { described_class.new('Dave')}
  subject(:player_2) { described_class.new('Mittens')}

  it 'player name 1 is Dave' do
    expect(player_1.name).to eq 'Dave'
  end

end