class Pessoa < ActiveRecord::Base

  

	# Include default devise modules. Others available are:
	# :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :nome, :email, :nascimento, :sexo, :numero, :complemento, :telefone, :rua_id, :password, :password_confirmation, :remember_me

	belongs_to :rua
	has_many :entrevistadores, dependent: :restrict
	has_many :pesquisas, :through => :entrevistadores

	def link_nome
		return "<a href='/pessoas/#{id}'>#{nome} </a>"
	end

end
