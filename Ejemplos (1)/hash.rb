
my_projects = {}

my_projects[:aresolver]=2013
my_projects[:portugal]=2022
my_projects[:bairesdev]=2021
my_projects[:sannet]=2021


#ordenar

#puts my_projects.sort_by { |name, year| name }  # Devuelve array anidado ordenado
# => [[:aresolver, 2013], [:bairesdev, 2021], [:sannet, 2021], [:portugal, 2022]]


#puts my_projects.sort
# Devuelve array de pares ordenados, ordenados por la clave (key)
# => [[:aresolver, 2013], [:bairesdev, 2021], [:sannet, 2021], [:portugal, 2022]]

puts my_projects.sort { |a, b| b[1] <=> a[1] }
# ordena de MAYOR a MENOR
# Si a[1] es MAYOR lo va poniendo de primero

puts my_projects.sort { |a, b| a[1] <=> b[1] } 
# ordena de MENOR a MAYOR
# Si a[1] es MENOR lo va poniendo de primero
