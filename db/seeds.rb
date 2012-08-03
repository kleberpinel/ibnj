# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rua = Rua.create(nome: "Rua Henrique Dumont", ponto_de_referencia: "", bairro: "Vila Carrão", cep: "03948-877")

entrevistada = Pessoa.create(nome: "Andrea Marteiro Pinto", telefone: "3467-7322", sexo: 1, rua: rua)
entrevistador1 = Pessoa.create(nome: "Cristiano Almeida Bernardo", telefone: "3467-7322", sexo: 0, rua: rua)
entrevistador2 = Pessoa.create(nome: "Kleber Pinel Bernardo da Silva", telefone: "3467-7322", sexo: 0, rua: rua)


pesquisa = Pesquisa.create(nome: "TrasnPaulista")
pesquisa.entrevistadores.create(:pessoa => entrevistador1)
pesquisa.entrevistadores.create(:pessoa => entrevistador2)

entrevista = Entrevista.create(entrevistado: entrevistada, pesquisa: pesquisa, religiao: "Evangélico")

