# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Ability.destroy_all
Beast.destroy_all
User.destroy_all

puts 'begin'

user1 = User.create!(email: 'harry@mail.com', password: '123456')
file = URI.open('https://source.unsplash.com/800x600/?profile')
user1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

user2 = User.create!(email: 'dumbledore@mail.com', password: '123456')
file = URI.open('https://source.unsplash.com/800x600/?profile')
user2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

user3 = User.create!(email: 'voldemort@mail.com', password: '123456')
file = URI.open('https://source.unsplash.com/800x600/?profile')
user3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')


puts 'Creating users'

b1 = Beast.create!(name:"Red Dragon", category:"dragon", dangerousness: 4, price: 20, location: "Melbourne", user_id: user1.id)
file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
b1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b2 = Beast.create!(name:"Giant Spider", category:"insect", dangerousness: 2, price: 17, location: "Sydney", user_id: user2.id)
file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
b2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b3 = Beast.create!(name:"Unicorn", category:"holy", dangerousness: 1, price: 49, location: "Wollongong", user_id: user1.id)
file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
b3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b4 = Beast.create!(name:"Pikachu", category:"lightning", dangerousness: 5, price: 32, location: "Melbourne", user_id: user3.id)
file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
b4.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b5 = Beast.create!(name:"Chimaera", category:"fire", dangerousness: 5, price: 132, location: "Darwin", user_id: user2.id)
file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
b5.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

arr = [b1.id, b2.id, b3.id, b4.id, b5.id]

puts 'Creating beasts'

['fly in 1 straight line', 'spit fire and light up bbq', 'store water in its belly', 'eat venom instead of burger', 'teach children how to swim'].each_with_index do |a, i|
  Ability.create!(description: a, beast_id: arr[i])
end

puts 'Creating abilitys'

puts "Successfully created #{Ability.all.size} abilities, #{Beast.all.size} beasts and #{User.all.size} users!"
