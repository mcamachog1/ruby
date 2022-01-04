require 'digest'

# Definicion del modulo
module Encryption
  private

  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

# Definicion de la clase persona
class Person
  include Encryption

  attr_accessor :password

  def initialize(name)
    @name = name
  end

  def encrypted_password
    encrypt(@password)
  end
end

person = Person.new('Ada')
puts person.encrypt('super secret') # Dará error "private method `encrypt' called for #<Person:0x000001edc3c5a910 @name="Ada"> (NoMethodError)"

# Para este ejemplo (mismo caso 01_modules.rb) se agrega la palabra reservado private al inicio de los metodos del modulo Encryption,
# para indicar que sera privado y no podrá ser accedido desde afuera en la instacia del objeto.
