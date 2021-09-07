class Game < ApplicationRecord
	validates :name, presence: true 
	validates :price, presence: true
	validates :price, numericality: { greater_than: 0 }	
	validates :platform, inclusion: { in: %w(PS4 XBox PC),
    message: "%{value} is not a valid platform" }
	validates :description, length: { maximum: 250 }	
end
