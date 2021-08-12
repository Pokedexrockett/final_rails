# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

strains = Strain.create([{name: "Purple Punch", category: "Indica", thc: 16.3, cbd: 0.03, rating: 2, notes: "pretty okay", user_id:1},
                         {name: "Gelato", category: "Sativa", thc: 19.2, cbd: 0.03, rating: 3, notes: "pretty good, user_id:1},
                         {name: "Cinderella 99", category: "hybrid", thc: 20.5, cbd: 0.03, rating: 4, notes: "good", user_id:1}                          
                        ])


users = User.create(username: "test", email: "test@test.com")

growers = Grower.create([{name: "High Garden"}, 
                         {name: "Eden"}, 
                         {name: "Cannabliss"}])



