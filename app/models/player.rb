class Player < ActiveRecord::Base

  belongs_to :user
  attr_accessible :name

  attr_accessor :position


  def score
    case @position
    when 1
      100
    when 2
      50
    when 3..5
      30
    when 6..10
      20
    when 11..20
      10
    when 21..40
      5
    else
      0
    end
  end

end