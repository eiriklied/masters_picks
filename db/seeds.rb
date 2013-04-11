# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Player.destroy_all

christian = User.create({name: 'Christian Ruud', email: 'christianruud@yahoo.no'})
['Tiger Woods', 'Phil Mickelson', 'Bubba Watson', 'Rory McIlroy', 'Graeme McDowell', 'Rickie Fowler', 'Dustin Johnson', 'Justin Rose', 'Henrik Stenson', 'Adam Scott'].each do |player_name|
	christian.players.create({name: player_name})
end

fredrik = User.create({name: 'Fredrik Bach', email: 'fredrikbach@gmail.com'})
['Tiger Woods', 'Charl Schwartzel', 'Sergio Garcia', 'Keegan Bradley', 'Hunter Mahan', 'Rory McIlroy', 'Graeme McDowell', 'Phil Mickelson', 'Louis Oosthuizen', 'Henrik Stenson'].each do |player_name|
	fredrik.players.create({name: player_name})
end

casper = User.create({name: 'Casper Ruud', email: ''})
['Tiger Woods', 'Keegan Bradley', 'Rory McIlroy', 'Rickie Fowler', 'Brandt Snedeker', 'Justin Rose', 'Dustin Johnson', 'Bubba Watson', 'K.J. Choi', 'Ernie Els'].each do |player_name|
	casper.players.create({name: player_name})
end

eirik = User.create({name: 'Eirik Johannessen', email: 'eirikjohannessen@gmail.com'})
['Tiger Woods', 'Justin Rose', 'Phil Mickelson', 'Bubba Watson', 'Rory McIlroy', 'Luke Donald', 'Bill Haas', 'Hunter Mahan', 'Lee Westwood', 'Dustin Johnson'].each do |player_name|
	eirik.players.create({name: player_name})
end

nils = User.create({name: 'Nils Ruud', email: ''})
['Tiger Woods', 'Adam Scott', 'Jim Furyk', 'Lee Westwood', 'Bubba Watson', 'K.J. Choi', 'Rory McIlroy', 'Louis Oosthuizen', 'Henrik Stenson', 'Keegan Bradley'].each do |player_name|
	nils.players.create({name: player_name})
end

lenn = User.create({name: 'Lenn Solheim', email: ''})
['Tiger Woods', 'Phil Mickelson', 'Bubba Watson', 'Adam Scott', 'Angel Cabrera', 'Brandt Snedeker', 'Louis Oosthuizen', 'Rickie Fowler', 'Lee Westwood', 'Ernie Els'].each do |player_name|
	lenn.players.create({name: player_name})
end

joakim = User.create({name: 'Joakim Bjerke', email: ''})
['Tiger Woods', 'Graeme McDowell', 'Rory McIlroy', 'Ian Poulter', 'Bubba Watson', 'Brandt Snedeker', 'Hunter Mahan', 'Martin Kaymer', 'Dustin Johnson', 'Peter Hanson'].each do |player_name|
	joakim.players.create({name: player_name})
end

andreas = User.create({name: 'Andreas Forgaard', email: ''})
['Tiger Woods', 'Phil Mickelson', 'Rory McIlroy', 'Lee Westwood', 'Nicolas Colsaerts', 'Bubba Watson', 'Sergio Garcia', 'Louis Oosthuizen', 'Jason Dufner', 'Peter Hanson'].each do |player_name|
	andreas.players.create({name: player_name})
end