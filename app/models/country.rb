class Country < ApplicationRecord
  	has_many :masterpieces
  	def to_s
  		"#{title}"
  	end
end
