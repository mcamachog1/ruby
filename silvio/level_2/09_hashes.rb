#hash   -> son arreglos asociativos, donde la clave puede ser cualquier valor/objeto.

hash1 = {
    "posicion_a" => "Valor A", 
    "posicion_b" => "Valor B", 
    "posicion_c" => "Valor C"
}
p "HASH1: "
p hash1
p hash1["posicion_b"]

#hash con claves de diferentes tipos de datos
hash2 = {
    "posicion_a" => "Valor A", 
    "posicion_b" => "Valor B", 
    "" => "Valor Vacio",
    nil => "Valor Nulo",
    [] => "Valor para array",
    :symbolo1 => "Simbolo 1",
    100 => "Valor Intero 100",
    3.14 => "Valor Flotante 3.14"
}

p hash2
p hash2[""]
p hash2[nil]
p hash2[[]]
p hash2[:symbolo1]
p hash2[100]
p hash2[3.14]

#crear hash vacio y luego asignarle los valores
hash3 = Hash.new
hash3["h3-1"] = "Hash 3/1"
hash3["h3-2"] = "Hash 3/2"

p hash3

