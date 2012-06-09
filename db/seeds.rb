# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dummyuser = User.create({ username: 'dummy', email: 'dummy@idiot.org', password: 'willthiswork'})

clients = Client.create([{ name: 'Joe Client', email: 'joe.client@gmail.com', homepage: 'http://www.mac.com/joeclient'},
	                     { name: 'CrapCo', email: 'info@crapco.com', homepage: 'http://crapco.com'}
	                     ])

accolade = Accolade.new({ title: 'This guy is totally awesome, great to work for.',
	                      description: 'they feed you candy every day, and the office is filled with puppies. The only downside is that the puppies are diabetic from the candy.' })
accolade.save

dummyuser.accolades << accolade
clients.first.accolades << accolade


accusation = Accusation.new({ title: 'Do not take their calls, trust me.',
	                          description: 'This is a den of sadistic liars. They hired me for a ruby project, but when I got there it was PHP. Also there were BEES EVERYWHERE!' })
accusation.save

dummyuser.accusations << accusation
clients.last.accusations << accusation
