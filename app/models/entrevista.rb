class Entrevista < ActiveRecord::Base
	belongs_to :pesquisa
	belongs_to :entrevistado, :class_name => 'Pessoa' # que é uma pessoa

	belongs_to :pesquisa

end
