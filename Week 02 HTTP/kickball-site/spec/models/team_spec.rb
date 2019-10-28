require "spec_helper"

RSpec.describe Team do
  let(:players) do
    {
      'Count Chocula': 'Pitcher',
      'Trix the Rabbit': 'Catcher',
      'Capn Crunch': '1st Base'
    }
  end

  let(:team) { Team.new('Cereal Superstars', players) }

  it 'has a name' do
    expect(team.name).to eq('Cereal Superstars')
  end

  it 'has a list of players' do
    expect(team.players[0]).to be_a(Player)
  end
end
