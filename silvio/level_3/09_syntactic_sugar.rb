# Syntactic Sugar
# Para el caso de las clases hace referencia a la escritura de los metodos set y get de forma natural con la asignacion
# Pj. en vez de crear setName y getName, usar la convención:

# objeto = Prueba.new
# objeto.name = "Hola"  # Llamada al metodo set para name
# puts objeto.name      # Llamada al metodo get para name

# Clase NewDog Ejemplo de set y get
class NewDog
  def initialize(breed)
    @breed = breed
  end
  attr_reader :breed, :name # create reader only

  # setter method
  def name=(nm)
    @name = nm
  end
end

nd = NewDog.new('Doberman')
nd.name = 'Benzy'
puts nd.name
