# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'faker'

json_file =  JSON.parse(open("#{Rails.root}/db/assets/json_data.json").read)

10.times do
  owner = Owner.new
  owner.name = Faker::StarWars.character
  owner.save
end

json_file.each do |file|

  year = Year.new
  if(!Year.find_by year: file['year'])
    year.year = file['year']
    year.save
  end

  car = Car.new
    car.make = file['make']
    car.model = file['model']
    car.year_id_id = Year.find_by_year(file['year']).id
    car.save




    # car_year = car['year']
    # year_exist = Year.where("year == car_year")
    # if(!car_year)
    #     Year.create(year: car['year'])
    # end
end


Owner.all.each do |owner|
  owner.car_id_id = Faker::Number.between(1,19000)
  owner.save
end
