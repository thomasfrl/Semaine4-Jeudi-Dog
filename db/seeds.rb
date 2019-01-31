# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bundler'
Bundler.require

Chien.destroy_all
DogSitter.destroy_all
Stroll.destroy_all
City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'chiens'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dog_sitters'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'strolls'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")

2.times do 
    c = City.create(name: Faker::Nation.capital_city)
end

10.times do 
    ch = Chien.create(name: Faker::Name.last_name, city_id: City.all.sample.id)
    ds = DogSitter.create!(name: Faker::Name.name, city_id: City.all.sample.id)
end

40.times do 
    s = Stroll.create!(date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today), chien_id: Chien.all.sample.id, dog_sitter_id: DogSitter.all.sample.id)
end

