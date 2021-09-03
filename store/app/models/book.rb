class Book < ApplicationRecord
	validates :name, presence: true
	validates :price, presence: true
	validates :author, presence: true

	validates :price, numericality: { greater_than: 0 }	
	validates :author, length: { in: 3..30 }
	validates :description, length: { maximum: 250 }	

end
