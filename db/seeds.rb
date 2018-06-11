# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create(
  name: 'Client #1',
  app_id: 'YE0NYveQGoFsNLX220Dy5g',
  app_secret: 'aqpGBedDnHFyp5MmgT8KErr9D015ScmaY8r3vHg5C0'
)

User.create(
  name: 'Luis',
  email: 'luis@example.com',
  password: 'password',
  password_confirmation: 'password'
)
