class Rua < ActiveRecord::Base

	has_many :pessoas, dependent: :restrict
	
end