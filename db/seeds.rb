# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beneficiario.create(nome: 'Jose', idade: 31, endereco: 'Rua um', qtde_pessoas_familia: 10, renda: 1200, qtde_pessoas_vulneraveis: 6, telefone: '3333-3333' )
Beneficiario.create(nome: 'Rafael', idade: 31, endereco: 'Rua um', qtde_pessoas_familia: 12, renda: 1500, qtde_pessoas_vulneraveis: 8, telefone: '3333-3333' )
Beneficiario.create(nome: 'Jose', idade: 31, endereco: 'Rua um', qtde_pessoas_familia: 4, renda: 800, qtde_pessoas_vulneraveis: 2, telefone: '3333-3333' )


# t.string :nome
# t.integer :idade
# t.string :endereco
# t.integer :qtde_pessoas_familia
# t.float :renda
# t.integer :qtde_pessoas_vulneraveis
# t.string :telefone
