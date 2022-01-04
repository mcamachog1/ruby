#simbolos -> etiquedas/identificadores unicos para hacer referencia a algo. Son mas eficaces, ocupan menos memoria y rapido acceso
#se representan como variables con el prefijo :

arreglo_asociativo = {
    :posicion_a => "Valor A", 
    :posicion_b => "Valor B", 
    :posicion_c => "Valor C"
};

#imprime todo el array
p arreglo_asociativo;

#imprime el valor en esa posicion del simbolo
p arreglo_asociativo[:posicion_a];

#conocer el id del symbolo
a = :posicion_a
p a.object_id
p a.class