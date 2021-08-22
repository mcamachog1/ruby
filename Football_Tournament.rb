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

#Clases
class Team
  attr_accessor :name, :points
  def initialize(name)  
    @name = name
    @points = 0
  end
  
  def add_points(points)
    @points += points
  end

  def print
    puts "#{@name} == #{@points}"
  end
end

class Game
   def initialize(home_team, visit_team)
    @home_team = home_team
    @visit_team = visit_team
    @home_score=0
    @visit_score=0
  end
  def play (home_score, visit_score)
    @home_score=home_score
    @visit_score=visit_score
    if home_score > visit_score
      @home_team.add_points 3
    elsif visit_score > home_score
      @visit_team.add_points 3
    else
      @home_team.add_points 1
      @visit_team.add_points 1
    end
  end
  def print
    puts "Equipo Local: #{@home_team.name} -- Equipo Visitante: #{@visit_team.name} -- Resultado #{@home_score} X #{@visit_score} "
  end
end

class Finaltable
  attr_reader :tabla
  def initialize(lista_equipos)
    @tabla={}
    lista_equipos.each do |team|
      @tabla[team.name] = team.points
    end
  end

  def print
    puts "** Resultados **"
    tabla.sort { |a, b| b[1] <=> a[1] }.each do |a, b|
      puts "#{a} == #{b}"
    end
  end
end

#Equipos
equipo_A = Team.new("Equipo A")
equipo_B = Team.new("Equipo B")
equipo_C = Team.new("Equipo C")
equipo_D = Team.new("Equipo D")

#Juegos 
game_1 = Game.new(equipo_A, equipo_B)
game_2 = Game.new(equipo_C, equipo_D)
game_3 = Game.new(equipo_A, equipo_C)
game_4 = Game.new(equipo_B, equipo_D)
game_5 = Game.new(equipo_A, equipo_D)
game_6 = Game.new(equipo_B, equipo_C)

#Resultados
game_1.play(3,1)
game_2.play(0,0)
game_3.play(1,1)
game_4.play(2,3)
game_5.play(2,1)
game_6.play(3,1)

#Tabla Final
Finaltable.new([equipo_A, equipo_B, equipo_C, equipo_D]).print




