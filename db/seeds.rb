# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bars = Bar.create([
  { name: 'Foundation', numberOfUsers: 1, address: '213 Fayetteville St', city: 'Raleigh', state: 'NC', zip: '27601', distance: 10.5 },
  { name: 'Raleigh Times', numberOfUsers: 22, address: '14 E. Hargett St', city: 'Raleigh', state: 'NC', zip: '27601', distance: 2.1 },
  { name: 'The Keg', numberOfUsers: 5, address: '2506 Hillsborough St', city: 'Raleigh', state: 'NC', zip: '27607', distance: 1.7 },
  { name: 'The Big Easy', numberOfUsers: 15, address: '222 Fayetteville St', city: 'Raleigh', state: 'NC', zip: '27601', distance: 6.9 },
  { name: 'Isaac Hunters', numberOfUsers: 20, address: '112 Fayetteville St', city: 'Raleigh', state: 'NC', zip: '27601', distance: 8.6 },
  { name: 'Neptunes', numberOfUsers: 11, address: '14 W. Martin St', city: 'Raleigh', state: 'NC', zip: '27601', distance: 0.5 },
  { name: 'Tomato Jake\'s', numberOfUsers: 6, address: '8202 Renaissance Parkway', city: 'Durham', state: 'NC', zip: '27713', distance: 5.0 },
  { name: 'The Goat', numberOfUsers: 0, address: '5111 Western Boulevard', city: 'Raleigh', state: 'NC', zip: '27606', distance: 11.1 },
  { name: 'Mitch\'s Tavern', numberOfUsers: 10, address: '2426 Hillsborough St', city: 'Raleigh', state: 'NC', zip: '27607', distance: 6.6 },
  { name: 'Lucky B\'s', numberOfUsers: 3, address: '609 Tucker St', city: 'Raleigh', state: 'NC', zip: '27606', distance: 2.5 },
  { name: 'Busy Bees', numberOfUsers: 14, address: '225 S Wilmington St', city: 'Raleigh', state: 'NC', zip: '27603', distance: 3.2 },
  { name: 'Solas', numberOfUsers: 5, address: '419 Glenwood Ave', city: 'Raleigh', state: 'NC', zip: '27603', distance: 7.5 },
  { name: 'The Oxford', numberOfUsers: 6, address: '319 Fayetteville St', city: 'Raleigh', state: 'NC', zip: '27606', distance: 7.6 }

])

specials = Special.create([
  {name: 'Free Beer!', description: 'The beer! It\'s free!', requiredUsers: 50, bar: bars[0]},
  {name: '1/2 Off Everything!', description: 'Everything! It\'s half off!', requiredUsers: 80, bar: bars[1]},
  {name: '$2 Draft', description: '$2 for any beer on draft!', requiredUsers: 10, bar: bars[2]},
  {name: 'Dance for Drinks!', description: 'If you dance while you order, It\'s 1/2 off!', requiredUsers: 25, bar: bars[3]},
  {name: '$1 Shots', description: 'Not the shot you wanted, but it\'s only $1!', requiredUsers: 40, bar: bars[4]},
  {name: 'The Downstairs Mixup', description: 'Order "The Downstairs Mixup" and get a special gift', requiredUsers: 30, bar: bars[5]},
  {name: 'Trivia Drink Special', description: '1/2 off select drinks', requiredUsers: 10, bar: bars[6]},
  {name: 'Go home while you still can', description: 'You shouldn\'t be here, get out while you can!', requiredUsers: 1, bar: bars[7]},
  {name: '$1 Pitchers', description: 'Only $1 for select Pitches of beer!', requiredUsers: 10, bar: bars[8]},
  {name: 'The Prohibition', description: '$1 for a shot of whiskey and a PBR', requiredUsers: 20, bar: bars[9]},
  {name: 'Free Beer!', description: 'The beer! It\'s free! Like seriously free!', requiredUsers: 50, bar: bars[10]},
  {name: 'Mystery Beer', description: 'Nobody knows, but it\'s only $1', requiredUsers: 80, bar: bars[11]},
  {name: 'OMG is that a dinosaur?', description: 'No my bad, it\'s just more free beer!', requiredUsers: 50, bar: bars[12]}


])
