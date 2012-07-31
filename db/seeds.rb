# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bairro1 = Bairro.create(nome: "Vila Carrão", ponto_de_referencia: "Próximo ao bairro do Tatuapé", cidade: "São Paulo");
bairro2 = Bairro.create(nome: "Vila Antonieta", ponto_de_referencia: "Próximo ao bairro do Tatuapé", cidade: "São Paulo");
rua = Rua.create(nome: "Rua Henrique Dumont", ponto_de_referencia: "", bairro: bairro1)
pessoa = Pessoa.create(nome: "Andrea Marteiro Pinto", telefone: "3467-7322", sexo: 1, rua: rua)
