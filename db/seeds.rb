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
  name: 'Teste1',
  admin: true
)

User.create!(
  login: '18141356771',
  password: 'papaimamae2',
  name: 'Teste 2'
)


30.times do
  name  = Faker::Name.name
  names = name.split()[0] + name.split()[1]
  login = Faker::IDNumber.brazilian_id
  User.create!(
    name: name,
    login: login,
    password: '123456',
    uffmail: names + '@id.uff.br'
  )
end
