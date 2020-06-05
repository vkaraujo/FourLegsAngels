# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

puts "Cleaning the database"

Pet.destroy_all
User.destroy_all

puts "DB is clean"
puts "Creating Users, Pets and Requests"

User.create!(email: "vkaraujo00@gmail.com", password: '123456')
User.create!(email: "player1@gmail.com", password: 'player1')
User.create!(email: "sabrina@gmail.com", password: '123456')
User.create!(email: "leo@gmail.com", password: '123456')
User.create!(email: "theo@gmail.com", password: '123456')

corgi = "https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80"
terrier = "https://images.unsplash.com/photo-1556229174-5e42a09e45af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
lab = "https://images.unsplash.com/photo-1591225472821-23fa84bded0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
husk = "https://images.unsplash.com/photo-1590926733709-46595b4a30f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
pastor = "https://images.unsplash.com/photo-1590596413111-a7768f21954e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
pitbull = "https://images.unsplash.com/photo-1590437599432-15dacfc5bfc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
dog = "https://images.unsplash.com/photo-1588971450634-cea736e3fab4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
dogg = "https://images.unsplash.com/photo-1586994814238-4cc458ab5b43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
cute = "https://images.unsplash.com/photo-1456081445129-830eb8d4bfc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
pup = "https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
pupp = "https://images.pexels.com/photos/235805/pexels-photo-235805.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
puppy = "https://images.pexels.com/photos/1458916/pexels-photo-1458916.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
dash = "https://images.pexels.com/photos/1359036/pexels-photo-1359036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
puup = "https://images.pexels.com/photos/3908821/pexels-photo-3908821.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"

url_array = [corgi, terrier, lab, husk, pastor, pitbull, dog, dogg, cute, pup, pupp, puppy, dash, puup]
name_array = ["Rex", "Fluck", "Pi Radianus", "Mel", "Snowball", "Max", "Gilbert", "Chopp", "Beer", "Cachaça", "Corote", "Caninha da Roça", "Maria Joana", "Lua", "Layla", "Bolinha", "Schrubles", "Charmander", "Yoda", "Thor", "Barry Allen", "Morning Star"]
address_array = ["Botafogo", "Copacana", "Petropolis", "Teresopolis", "Niteroi", "São Paulo", "São José dos Campos"]
size_array = ["Small", "Medium", "Big"]
description_array = ["Like to sleep near humans","Energetic and smart. Be worried if things are too quiet, you most likely need new shoes","Will eat your phone if you let","Considering its destruction potential, it is problably good for protection","Prone to sleep anywhere, but a really great dog when it is awake","Love small kids. Keep it away from chocolate","99% anjo, mas aquele 1%...","Loves to be hugged and kissed","Really energetic, love/hater her toys"]

url_array.each do |url|
  file = URI.open(url)
  filename = File.basename(URI.parse(url).path)
  pet = Pet.new(name: name_array.sample, address: address_array.sample, specie: "DOG", size: size_array.sample, description: description_array.sample, user: User.all.sample )
  pet.photo.attach(io: file, filename: filename)
  pet.save
end

puts "Done"

