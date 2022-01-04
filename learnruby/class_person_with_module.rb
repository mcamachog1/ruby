require 'digest'

module Encryption
    private
    
    def encrypt(string)
        Digest::SHA2.hexdigest(string)
    end
end

class Person
    include Encryption
    attr_accessor :name
    attr_writer :password

    def initialize(name)
        @name = name
    end
    def encrypted_password
        encrypt(@password)
    end    
end