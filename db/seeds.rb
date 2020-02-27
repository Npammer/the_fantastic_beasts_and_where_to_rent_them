# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "open-uri"

# Ability.destroy_all
# Beast.destroy_all
# User.destroy_all

# puts 'begin'

# user1 = User.create!(email: 'harry@mail.com', password: '123456')
# file = URI.open('https://source.unsplash.com/800x600/?profile')
# user1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# user2 = User.create!(email: 'dumbledore@mail.com', password: '123456')
# file = URI.open('https://source.unsplash.com/800x600/?profile')
# user2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# user3 = User.create!(email: 'voldemort@mail.com', password: '123456')
# file = URI.open('https://source.unsplash.com/800x600/?profile')
# user3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')


# puts 'Creating users'

# b1 = Beast.create!(name:"Red Dragon", category:"dragon", dangerousness: 4, price: 20, location: "Melbourne", user_id: user1.id)
# file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
# b1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# b2 = Beast.create!(name:"Giant Spider", category:"insect", dangerousness: 2, price: 17, location: "Sydney", user_id: user2.id)
# file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
# b2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# b3 = Beast.create!(name:"Unicorn", category:"holy", dangerousness: 1, price: 49, location: "Wollongong", user_id: user1.id)
# file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
# b3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# b4 = Beast.create!(name:"Pikachu", category:"lightning", dangerousness: 5, price: 32, location: "Melbourne", user_id: user3.id)
# file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
# b4.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# b5 = Beast.create!(name:"Chimaera", category:"fire", dangerousness: 5, price: 132, location: "Darwin", user_id: user2.id)
# file = URI.open('https://source.unsplash.com/800x600/?animal,exotic')
# b5.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

# arr = [b1.id, b2.id, b3.id, b4.id, b5.id]

# puts 'Creating beasts'

# ['fly in 1 straight line', 'spit fire and light up bbq', 'store water in its belly', 'eat venom instead of burger', 'teach children how to swim'].each_with_index do |a, i|
#   Ability.create!(description: a, beast_id: arr[i])
# end

# puts 'Creating abilitys'

# puts "Successfully created #{Ability.all.size} abilities, #{Beast.all.size} beasts and #{User.all.size} users!"




require "open-uri"

Ability.destroy_all
Beast.destroy_all
User.destroy_all

puts 'begin'

user1 = User.create!(email: 'harry@mail.com', password: '123456')
file = URI.open('https://lh3.googleusercontent.com/proxy/gKQfs0uf3PwaiKaDwyUUZv3jnZm3R1tcjQzJS5zVsH5JCmhapihh2YtinwAxH71u-NLcanwhxgOhxY5-rFtyi23N3Zyal6fMUB1aLnF9V2FWj1vPaQb9x06E7dpVENcN-wvRKbm0rYKcMbBRMmjN46JMx2n2bA')
user1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

user2 = User.create!(email: 'dumbledore@mail.com', password: '123456')
file = URI.open('https://s.yimg.com/ny/api/res/1.2/of8lv_06A_zmAnn5Db9Giw--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en-US/homerun/hello_giggles_454/ef5938ebc39e7233d8139eba894500df')
user2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

user3 = User.create!(email: 'voldemort@mail.com', password: '123456')
file = URI.open('https://data.1freewallpapers.com/download/lord-voldemort-800x600.jpg')
user3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')


puts 'Creating users'

b1 = Beast.create!(name:"Red Dragon", category:"dragon", dangerousness: 4, price: 20, location: "Beijing", user_id: user1.id)
file = URI.open("https://res.cloudinary.com/thetravelusts/image/upload/v1582763160/beasts%20img/beasts_img_beast11_l5fse3.jpg")
b1.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b2 = Beast.create!(name:"Giant Spider", category:"insect", dangerousness: 2, price: 17, location: "Brisbane", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763160/beasts%20img/beasts_img_beast8_tdiwxj.jpg')
b2.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b3 = Beast.create!(name:"Kraken", category:"ice", dangerousness: 1, price: 49, location: "Hobart", user_id: user1.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763162/beasts%20img/beasts_img_beast5_vdkng1.jpg')
b3.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b4 = Beast.create!(name:"Phoenix", category:"lightning", dangerousness: 5, price: 32, location: "Melbourne", user_id: user3.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763161/beasts%20img/beasts_img_beast9_ah1sdq.jpg')
b4.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b5 = Beast.create!(name:"Chimaera", category:"fire", dangerousness: 5, price: 132, location: "Marrakech", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763161/beasts%20img/beasts_img_beast15_qmhz7a.jpg')
b5.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b6 = Beast.create!(name:"Eiten", category:"lion", dangerousness: 5, price: 200, location: "Kyoto", user_id: user1.id)
file = URI.open("https://res.cloudinary.com/thetravelusts/image/upload/v1582763162/beasts%20img/beasts_img_beast12_tu8vwd.jpg")
b6.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b7 = Beast.create!(name:"Angelica", category:"holy", dangerousness: 2, price: 47, location: "Perth", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763161/beasts%20img/beasts_img_beast3_kxgvnv.jpg')
b7.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b8 = Beast.create!(name:"Yatagarasu", category:"bird", dangerousness: 3, price: 69, location: "Hanoi", user_id: user1.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763161/beasts%20img/beasts_img_beast1_g1jwoy.jpg')
b8.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b9 = Beast.create!(name:"Draconia", category:"earth", dangerousness: 5, price: 232, location: "St Petersburg", user_id: user3.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763160/beasts%20img/beasts_img_beast4_slvkzr.jpg')
b9.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b10 = Beast.create!(name:"Callisto", category:"water", dangerousness: 5, price: 212, location: "Hawaii", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763160/beasts%20img/beasts_img_beast13_mmpmtw.jpg')
b10.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b11 = Beast.create!(name:"Alectryon", category:"wood", dangerousness: 5, price: 212, location: "Oslo", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763159/beasts%20img/beasts_img_beast2_mgk849.jpg')
b11.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

b12 = Beast.create!(name:"Garuda", category:"ice", dangerousness: 2, price: 138, location: "Bali", user_id: user2.id)
file = URI.open('https://res.cloudinary.com/thetravelusts/image/upload/v1582763159/beasts%20img/beasts_img_beast10_igyesb.jpg')
b12.photo.attach(io: file, filename: 'pict.jpg', content_type: 'image/jpg')

arr = [b1.id, b2.id, b3.id, b4.id, b5.id, b6.id, b7.id, b8.id, b9.id, b10.id, b11.id, b12.id]

puts 'Creating beasts'

['fly in 1 straight line', 'spit fire and light up bbq', 'store water in its belly', 'eat venom instead of burger', 'teach children how to swim', 'fly in 1 straight line', 'spit fire and light up bbq', 'store water in its belly', 'eat venom instead of burger', 'teach children how to swim', 'spit fire and light up bbq', 'store water in its belly'].each_with_index do |a, i|
  Ability.create!(description: a, beast_id: arr[i])
end

puts 'Creating abilitys'

puts "Successfully created #{Ability.all.size} abilities, #{Beast.all.size} beasts and #{User.all.size} users!"
