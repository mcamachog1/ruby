require "csv"
require "Football_Tournament"

#Equipos
equipos = [Team.new("Team A"), Team.new("Team B"), Team.new("Team C"), Team.new("Team D") ]

#Cargar Juegos
table = CSV.parse(File.read("games_played.csv"), headers: true)

"col 0:Home 1:HomeScore 2:Separador 3:VisitScore 4:Visiting"
table.each do |row|
	home = row[0]
	visit = row[4]
	home_score = row[1]
	visit_score = row[3]
	home_obj = equipos.select {|object| object.name ==home}[0]
	visit_obj = equipos.select {|object| object.name ==visit}[0]
	game = Game.new(home_obj, visit_obj)
	game.play(home_score,visit_score)
end

#Tabla Final
Finaltable.new(equipos).print