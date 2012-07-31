class Rua < ActiveRecord::Base

	belongs_to :bairro
	has_many :pessoas
	
end
