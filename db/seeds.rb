# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create(
  name: 'Client #1',
  app_id: 'APPID001',
  app_secret: 'APPSECRET001'
)

Client.create(
  name: 'Client #2',
  app_id: 'APPID002',
  app_secret: 'APPSECRET002'
)

User.create(
  name: 'Luis',
  email: 'luis@example.com',
  age: 34,
  gender: 'male',
  password: 'password',
  password_confirmation: 'password'
)

User.create(
  name: 'Aye',
  email: 'aye@example.com',
  age: 35,
  gender: 'female',
  password: 'password',
  password_confirmation: 'password'
)
