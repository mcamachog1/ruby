# *num significa varios parametros de cualquier tipo separados por comas (,)
def square(*num)
    num.map {|n| n**2}
end

#Llamada
p square(1,2,3,4)
# => [1,4,9,16]