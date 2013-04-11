class UsersController < ApplicationController
  def index
  	@users = User.all
    populate_player_positions(@users)
  end

private
  def populate_player_positions(users)
    # intialize Leaderboard once to only perform one http request
    leaderboard = Leaderboard.new

    users.each do |user|
      user.players.each do |player|
        player.position = leaderboard.player_position(player.name)
      end
    end
  end
end
