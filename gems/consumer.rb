require "Football_Tournament"

#Equipos
equipo_A = Team.new("Equipo A")
equipo_B = Team.new("Equipo B")
equipo_C = Team.new("Equipo C")
equipo_D = Team.new("Equipo D")

equipo_A.print

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
