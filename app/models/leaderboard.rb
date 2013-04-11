class Leaderboard
	require 'open-uri'
	attr_reader :html

	PAGE_URL = 'http://espn.go.com/golf/leaderboard'

	def initialize
		@html = Nokogiri::HTML(open(PAGE_URL))
	end

	def player_position(name)
		raw_position = @html.xpath("//*[text()='#{name}']/ancestor::td[1]/ancestor::tr[1]/*[1]/text()").to_s
		raw_position.empty? ? '--' : raw_position.scan(/\d+/)[0]
	end

end