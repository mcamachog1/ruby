class Country < ApplicationRecord
	has_many :person
	paginates_per 2
end
