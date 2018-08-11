# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#Person.create([{ title: 'Mr', forename: 'Andrew', surname: 'Haworth', email: 'andy@hotmail.com', telephone: '07398851223', license_type: 'provisional', occupation: 'Student', street: 'Steynton', city: 'Hwest', county: 'Pembrokeshire', postcode: 'SA73 1AN' }])
#
#
5.times do
	person = Person.create({
		title: "Mr",
		forename: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		email: Faker::Internet.free_email,
		telephone: Faker::IDNumber.valid,
		date_of_birth: Faker::Date.birthday(17, 65),
		license_type: "Provisional",
		occupation: Faker::Job.title,
		street: Faker::StarWars.planet,
		city: Faker::Pokemon.location,
		county: Faker::LordOfTheRings.location,
		license_period: Faker::Number.number(2),
		postcode: Faker::Zelda.character
	})

	driver_history = DriverHistory.create({
		date_of_incident: Faker::Date.between(20.years.ago, 1.days.ago),
		value: Faker::Number.number(5),
		description: Faker::MostInterestingManInTheWorld.quote,
		incident_type: Faker::ProgrammingLanguage.name
	})

	vehicle = Vehicle.create({
		registration: Faker::Commerce.promotion_code,
		mileage: Faker::Number.number(5),
		value: Faker::Number.number(5),
		parking_location: Faker::ElderScrolls.city,
		policy_start: Faker::Date.backward(300)
	})

	Quote.create({
		date_created: Date.today,
		premium: (vehicle.value + vehicle.mileage - driver_history.value)
	})
end
