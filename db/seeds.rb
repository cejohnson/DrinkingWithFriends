# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bars = Bar.create([
  { name: 'Foundation', numberOfUsers: 1, address: '1234 Herp Derp Rd', city: 'Raleigh', state: 'NC', zip: '27606'},
  { name: 'Raleigh Times', numberOfUsers: 22, address: '1234 Blargh Dr', city: 'Raleigh', state: 'NC', zip: '27605' }
])

specials = Special.create([
  {name: 'Free Beer!', description: 'The beer! It\'s free!', requiredUsers: 50, bar: bars[0]},
  {name: '1/2 Off Everything!', description: 'Everything! It\'s half off!', requiredUsers: 80, bar: bars[1]}
])
