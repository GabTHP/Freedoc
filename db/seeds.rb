require 'faker'



Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Spec.destroy_all
Docspec.destroy_all






50.times do
  City.create!(city: Faker::Address.city)
end

50.times do
Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5), city: City.all.sample)
end



50.times do
Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

50.times do
  appointment = Appointment.create!(date: Faker::Date.forward(days: 360), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end



50.times do
  Spec.create!(name: Faker::Educator.subject)
end

20.times do 
  Docspec.create!(doctor:Doctor.all.sample, spec:Spec.all.sample)
end


puts "On est good pour la base de données maggle !"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
