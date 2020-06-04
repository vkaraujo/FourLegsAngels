# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Pet.destroy_all

User.create!(email: "sabrina@gmail.com", password: '123456')
User.create!(email: "leo@gmail.com", password: '123456')
User.create!(email: "theo@gmail.com", password: '123456')

Pet.create!(name: 'Rex', photo: "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80", specie: "DOG", size: "Medium", description: "Labrador", user: User.all.sample )
Pet.create!(name: 'Scooby', photo: "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80", specie: "CAT", size: "Small", description: "Very Fast", user: User.all.sample )
Pet.create!(name: 'Sabrina', photo: "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80", specie: "DOG", size: "Big", description: "Pastor Alemao", user: User.all.sample )
Pet.create!(name: 'Fenix', photo: "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80", specie: "DOG", size: "Medium", description: "Crazy", user: User.all.sample )
Pet.create!(name: 'Flash', photo: "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80", specie: "TURTLE", size: "Medium", description: "Big", user: User.all.sample )
