# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gps1 = Beacon.create!(location: '[39.996292, -105.23503]')
puts "GPS #{gps1.id} created!"
gps2 = Beacon.create!(location: '[40.00732857469379, -105.27627512114125]')
puts "GPS #{gps2.id} created!"
