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

require "logging.rb"

#Clases
class Team
  include Loggin
  attr_accessor :name, :points
  def initialize(name)  
    log("Inicializando equipo")
    @name = name
    @points = 0
  end
  
  def add_points(points)
    log("Sumando puntos para #{name}")
    @points += points
  end

  def print
    log("Imprimiendo equipo")
    puts "#{@name} == #{@points}"
  end
end

class Game
   include Loggin
   def initialize(home_team, visit_team)
    log("Inicializando Juegos")
    @home_team = home_team
    @visit_team = visit_team
    @home_score=0
    @visit_score=0
  end
  def play (home_score, visit_score)
    log("Cargando puntuacion")
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
    log("Imprimiendo resultados")
    puts "Equipo Local: #{@home_team.name} -- Equipo Visitante: #{@visit_team.name} -- Resultado #{@home_score} X #{@visit_score} "
  end
end

class Finaltable
  include Loggin
  attr_reader :tabla
  def initialize(lista_equipos)
    log("Inicializando tabla de resultados")
    @tabla={}
    lista_equipos.each do |team|
      @tabla[team.name] = team.points
    end
  end

  def print
    log("Imprimiendo tabla de resultados")
    puts "** Resultados **"
    tabla.sort { |a, b| b[1] <=> a[1] }.each do |a, b|
      puts "#{a} == #{b}"
    end
  end
end