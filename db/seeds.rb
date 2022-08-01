require 'faker'

puts 'Creating restaurants'

10.times do
  restaurant = Restaurant.new(
    name: "#{Faker::Movies::StarWars.character} #{Faker::Restaurant.type}",
    city: Faker::Movies::StarWars.planet
  )
  restaurant.save
end

puts 'done zo/'
