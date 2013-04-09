class Player < ActiveRecord::Base
  require 'open-uri'

  belongs_to :user
  attr_accessible :name

  def position
    html = Nokogiri::HTML(open("http://www.majorschampionships.com/masters.html"))
    raw_position = html.xpath("//*[text()='#{name}']/preceding-sibling::td/text()").to_s
    raw_position.empty? ? '100' : raw_position.delete("T").strip
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

  private

  def masters_name(name)
    name.split[0][0] + ' ' + name.split[1]
  end

end