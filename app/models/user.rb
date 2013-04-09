class User < ActiveRecord::Base
  has_many :players
  attr_accessible :email, :name

  def score
  	score = 0
  	players.each do |player|
  		score += player.score.to_i
  	end
  	score
  end

  def ranking
  	# calculate ranking based on all players scores
  end

end
