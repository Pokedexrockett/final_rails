# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

strains = Strain.create([{name: "first strain", category: "Indica", thc: 16.3, cbd: .03, rating: 2, notes: "pretty okay", user_id:1},
                        {name: "second strain", category: "Sativa", thc: 19.2, cbd: .03, rating: 3, notes: "pretty good, user_id:1},
                        {name: "third strain", category: "Hybrid", thc: 20.5, cbd: .03, rating: 4, notes: "good", user_id:1}                          
                        ])


users = User.create(username: "test", email: "test@test.com")

growers = Grower.create([{name: "High Garden"}, 
                         {name: "Eden"}, 
                         {name: "Cannabliss"}])



