# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

car_file =  JSON.parse(open("#{Rails.root}/db/assets/json_data.json").read)

car_file.each do |car|
    car.create(make: car['make'],
               model: car['model'])

               
    car_year = car['year']
    year_exist = Year.where("year == car_year")
    if(!car_year){
        year.create(year: car['year'])
    }
    
end 