class Player < ActiveRecord::Base
  require 'open-uri'

  belongs_to :user
  attr_accessible :name

  def position
    html = Nokogiri::HTML(open("http://sports.yahoo.com/golf/pga/leaderboard/2012/15"))
    raw_position = html.xpath("//*[text()='#{name}']/ancestor::td[1]/preceding-sibling::td/text()").to_s
    position = raw_position.delete("T")
  end

  def score
    case position.to_i
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