# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.destroy_all
User.destroy_all
puts "making users"
15.times do
  User.create(first_name: Faker::Name.first_name   , last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password123")
end
puts"made"


puts "creating trips"
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Euro", currency_two:  "British Pound Sterling")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Danish Krone", currency_two: "Swiss Franc" , currency_three: "Euro" )
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Euro", currency_two:  "British Pound Sterling")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "British Pound Sterling", currency_two:  "Euro", currency_three: "Swiss Franc" )
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Australian Dollar", currency_two:  "New Zealand Dollar")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Hong Kong Dollar", currency_two:  "Australian Dollar")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Canadian Dollar", currency_two: "Mexican Peso")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Hong Kong Dollar", currency_two:  "Japanese Yen")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "South Korean Won", currency_two: "Hong Kong Dollar")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Mexican Peso")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "South African Rand")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Argentine Peso", currency_two: "Brazilian Real")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Brazilian Real", currency_two: "Argentine Peso")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Israeli New Sheqel")
Trip.create(trip_name: "Big Vacation",user_id: User.all.sample.id, currency_one: "Japanese Yen")

puts "done with trips"
