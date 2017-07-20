# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


vehicle_list = [
  [ "ABC567", "White", 1994 ],
  [ "ABC098", "White", 2016  ],
  [ "ABC888", "Gray", 1992  ],
  [ "ABC647", "Black", 2001 ],
  [ "DFG479", "Black", 2000  ],
  [ "DFG111", "White", 1999  ],

]

vehicle_list.each do |plate, color, year|
  Vehicle.create(plate: plate, color: color, year: year)
end

passenger_list = [
  [ "Sebastian", "example@exm.com" ],
  [ "Diego", "test@exm.com" ],
  [ "Maria", "example1@exm.com" ],
  [ "Andrea", "test1@exm.com" ],
  [ "Mario", "example2@exm.com" ],
  [ "Juan", "test2@exm.com" ],
  [ "Pedro", "example3@exm.com" ],
  [ "David", "test3@exm.com" ],
  [ "Camilo", "example4@exm.com" ],
  [ "Jeison", "test4@exm.com" ],
  [ "Carolina", "example5@exm.com" ],
  [ " Ana", "example6@exm.com" ]
]

passenger_list.each do |name, email|
  Passenger.create(name: name, email: email)
end

20.times do 
  vehicle = Vehicle.order("RANDOM()").first
  passenger = Passenger.order("RANDOM()").first
  Route.create(passenger: passenger, vehicle:vehicle, name: Faker::Name.name, initial_point: Faker::Address.street_address, final_point: Faker::Address.street_address )
end
