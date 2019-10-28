require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/league"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect '/teams'
end

get "/teams" do
  @league = League.new

  erb :teams
end

get "/team/:team_name" do
  @league = League.new
  @team_name = params[:team_name]

  @league.teams.each do |team|
    if team.name == @team_name
      @team_info = team.players
      break
    end
  end

  erb :team_details
end

get "/positions" do
  @league = League.new

  @list_of_pos = []
  pos = @league.teams[0]
  pos.players.each do |position, name|
    @list_of_pos << position
  end

  erb :positions
end

get "/position/:position_name" do
  @league = League.new
  @position_name = params[:position_name]

  @list_of_players = {}
  @league.teams.each do |team|
    team_name = team.name
    team.players.each do |pos, player|
      if @position_name == pos
        @list_of_players[team_name.to_sym] = player
      end
    end
  end

  erb :position_details
end
