require 'digest'

class Person
    attr_accessor :name
    attr_writer :password

    def initialize(name)
        @name = name
    end
    def encrypted_password
        Digest::SHA2.hexdigest(@password)
    end    
end