# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campu.create!(
  nome: 'Praia Vermelha A',
  endereco: 'Rua Passos da Pátria',
  numero: '149',
  bairro: 'Gragoatá'
)

Campu.create!(
  nome: 'Praia Vermelha B',
  endereco: 'Avenida Milton Tavares de Souza',
  numero: '380',
  bairro: 'Gragoatá'
)

User.create!(
  login: '20935105026',
  password: 'papaimamae',
  name: 'Teste1'
)

User.create!(
  login: '18141356771',
  password: 'papaimamae2',
  name: 'Teste 2'
)