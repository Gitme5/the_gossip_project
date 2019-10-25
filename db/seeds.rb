# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


10.times do
	u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email, age: rand(18..42).to_i)
end	


10.times do
	c = City.create(name: Faker::Address.city, zip_code: rand(40000..90000).to_s)
end	

20.times do
	g = Gossip.create(title: Faker::Superhero.name, content: Faker::Lorem.sentence(word_count: 10))
end	





=begin

d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.postcode, speciality_id: rand(0..3))
end

#Filling up the patient table with Fake 50 entries
50.times do
	p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Filling up the appointment table with Fake date and links to other tables
200.times do
	a = Appointment.create(date: Faker::Date.forward(days: 100),doctor_id: rand(1..20), patient_id: rand(1..50), city_id: rand(1..6))
end
=end



