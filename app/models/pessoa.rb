class Pessoa < ActiveRecord::Base

	belongs_to :rua
	has_many :entrevistadores
	has_many :pesquisas, :through => :entrevistadores

	def link_nome
		return "<a href='/pessoas/#{id}'>#{nome} </a>"
	end

end
