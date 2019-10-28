require "spec_helper"

RSpec.describe League do
  let(:league) { League.new }

  it 'has a list of teams' do
    expect(league.teams[0]).to be_a(Team)
  end
end
