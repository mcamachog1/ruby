=begin
Activity: Football Tournament
Statement: Let's create a football tournament with 4 teams playing against each other. 
Each team should have a name and all the teams will play matches against each other. 
If a team wins the match, it receives 3 points, if it ties it receives 1 point 
and if it loses, it receives no point. Below are the scores for the tournament.
Team A 3 x 1 Team B
Team C 0 x 0 Team D
Team A 1 x 1 Team C
Team B 2 x 3 Team D
Team A 2 X 1 Team D
Team B 3 x 1 Team C
Create a program that receives these match results and displays the final tournament 
standings table in order (first team with the most points received; 
last team with the least points received).
=end

#Clase
class Team
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def points=(points)
    @points = points
  end
  def points
    @points
  end
  def add_points(points)
  	@points += points
  end
end

#Funcion
def game (home_team, visit_team, home_score, visit_score)
	if home_score > visit_score
		home_team.add_points 3
	elsif visit_score > home_score
		visit_team.add_points 3
	else
		home_team.add_points 1
		visit_team.add_points 1
	end
end

#Inicializar equipos
team_a = Team.new
team_a.name = "Team A"

team_b, team_c, team_d = Team.new, Team.new, Team.new
team_b.name, team_c.name, team_d.name = "Team B", "Team C", "Team D"

team_a.points, team_b.points, team_c.points, team_d.points = 0,0,0,0

#Juegos
game(team_a,team_b,3,1)
game(team_c,team_d,0,0)
game(team_a,team_c,1,1)
game(team_b,team_d,2,3)
game(team_a,team_d,2,1)
game(team_b,team_c,3,1)



#Imprimir resumen
puts team_a.name.upcase + " " + team_a.points.to_s
puts team_b.name.upcase + " " + team_b.points.to_s
puts team_c.name.upcase + " " + team_c.points.to_s
puts team_d.name.upcase + " " + team_d.points.to_s

#Falta ordenar
#El ordernar no funciona

final_table={}
final_table[team_a.name] = team_a.points
final_table[team_b.name] = team_b.points
final_table[team_c.name] = team_c.points
final_table[team_d.name] = team_d.points

final_table.sort_by(&:last)

final_table.values.each { |value|
  puts value 
}



