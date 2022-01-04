# Los Procs son bloques que se pueden crear y asignar a una variable, luego estas variables se pueden pasar como parametros a las funciones/metodos (son similares a los lambda)
factor = Proc.new {|n| print n*2 }
# or
# proc es un alias para Proc.new 
factor = proc {|n| print "#{n*2} "}

# using the proc value
[3,2,1].each(&factor)





