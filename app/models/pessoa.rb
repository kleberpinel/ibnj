class Pessoa < ActiveRecord::Base

	belongs_to :rua
	has_one :pesquisa_religiosa

end
