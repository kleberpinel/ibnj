# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rua = Rua.create(nome: "Rua Professor Rodolfo São Thiago", ponto_de_referencia: "", bairro: "Belenzinho", cep: "03059-050")

entrevistador = Pessoa.create(nome: "Kleber Pinel Bernardo da Silva", telefone: "(11) 8010-1060", email: "kleberpinel@gmail.com", password: "kleber123", sexo: 0, rua_id: rua.id)

pesquisa = Pesquisa.create(nome: "TrasnPaulista")
pesquisa.entrevistadores.create(:pessoa => entrevistador)