require 'digest'

module Encryption
  private
  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

class Person
  include Encryption 
  #La clase puede usar estos metodos para sus metodos
  #Los objetos no pueden usar estos metodos del modulo
  #Los objetos pueden usar los metodos de la clase

  #setter
  def initialize(name)
    @name = name
  end

  #getter
  def name
    @name
  end

  #setter
  def password=(password)
    @password=password
  end

  def encrypted_password
    encrypt(@password)
  end
end

person = Person.new("Ada")
person.password = "super secret"
puts person.encrypted_password

p person.encrypt("some other secret")

