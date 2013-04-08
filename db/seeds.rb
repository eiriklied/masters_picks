# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Player.destroy_all

fredrik = User.create({name: 'Fredrik Bach', email: 'fredrikbach@gmail.com'})
['Tiger Woods', 'Charl Schwartzel'].each do |player_name|
	fredrik.players.create({name: player_name})
end

christian = User.create({name: 'Christian Ruud', email: 'christianruud@yahoo.no'})
['Rickie Fowler', 'Henrik Stenson'].each do |player_name|
	christian.players.create({name: player_name})
end
