class Entrevistador < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :pesquisa
end