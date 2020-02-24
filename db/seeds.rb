# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Beast.create!(name:"dragon", category:"dragon", dangerousness: 2, price: 20, location: "Melbourne", user_id: 1)

%w[fly fire water venom swim].each_with_index do |a, i|
  Ability.create!(description: a, beast_id: 1)
end

puts "#{Ability.all.size}"
