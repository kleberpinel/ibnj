class Pesquisa < ActiveRecord::Base
	has_many :entrevistadores
	has_many :pessoas, :through => :entrevistadores
	
	has_many :entrevistas

	def link_nomes_entrevistadores

		str = ""
		entrevistadores.each do|n|
		  str += "<a href='/pessoas/#{n.pessoa.id}'>#{n.pessoa.nome} </a>, "
		end
		return str[0,str.length-2]

	end

	def nomes_entrevistadores

		str = ""
		entrevistadores.each do|n|
		  str += "#{n.pessoa.nome}, "
		end
		return str[0,str.length-2]

	end

	def nome_pesquisa_nomes_entrevistadores

		str = ""
		entrevistadores.each do|n|
		  str += "#{n.pessoa.nome}, "
		end
		return "#{nome} com #{str[0,str.length-2]}"
		
	end
end
