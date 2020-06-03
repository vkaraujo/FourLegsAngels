# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Pet.destroy_all

User.create!(email: "teste@gmail.com", password: '123456')
User.create!(email: "teste2@gmail.com", password: '123456')
User.create!(email: "teste3@gmail.com", password: '123456')
User.create!(email: "teste4@gmail.com", password: '123456')
User.create!(email: "teste5@gmail.com", password: '123456')

Pet.create!(name: 't1', user: User.all.sample )
Pet.create!(name: 't2', user: User.all.sample )
Pet.create!(name: 't3', user: User.all.sample )
Pet.create!(name: 't4', user: User.all.sample )
Pet.create!(name: 't5', user: User.all.sample )
Pet.create!(name: 't11', user: User.all.sample )
Pet.create!(name: 't21', user: User.all.sample )
Pet.create!(name: 't311', user: User.all.sample )
Pet.create!(name: 't41', user: User.all.sample )
Pet.create!(name: 't51', user: User.all.sample )

Request.create!(user: User.all.sample, pet: Pet.all.sample)
Request.create!(user: User.all.sample, pet: Pet.all.sample)
Request.create!(user: User.all.sample, pet: Pet.all.sample)