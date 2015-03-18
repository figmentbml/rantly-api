# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Rant.delete_all

minnie = User.create!(
  first_name: 'Minnie',
  last_name: 'Mouse',
  email: 'minnie@email.com',
  password: 'password',
  password_confirmation: 'password'
)

mickey = User.create!(
first_name: 'Mickey',
last_name: 'Mouse',
email: 'mickey@email.com',
password: 'password',
password_confirmation: 'password'
)

donald = User.create!(
first_name: 'Donald',
last_name: 'Duck',
email: 'donald@email.com',
password: 'password',
password_confirmation: 'password'

)

daisy = User.create!(
first_name: 'Daisy',
last_name: 'Duck',
email: 'beth.jaswa@gmail.com',
password: 'password',
password_confirmation: 'password'

)

Rant.create!(
  title: 'Or Blow Me a Kiss, Storytelling Chip Potts, Wdpro with You, Bert Baby Swap but Better Use It Carefully.',
  body: 'When you wish upon a Disney ipsum... When the day is gray, preston b. whitmore, so this is the miracle that i\'ve been dreaming of bookseller. The emperor\'s new school hands, lay the secret on me of man\'s red fire lucifer the cat. Oh, it\'s a jolly holiday pins you may be cold and wet when your done quality. Canoes princess aurora luigi\'s flying tires, main street electrical parade winnie the pooh and the honey tree.',
  user: mickey
)

Rant.create!(
title: 'When You Pick a Pear, Deluxe Dining Plan, Boomer Junior Omnibus Brave Collabrative Proactive Open Impactful Fireside Girls Scroop.',
body: 'When you wish upon a Disney ipsum... Hit cat the english cat, he can fly, second star to the right straight on till morning resort hotels. Walt disney one man\'s dream, old spice classic - division i men\'s basketball tournament jackson "jaq" hopscotch. Bill the lizard horace & jasper badun candice flynn with you, bert country bear jamboree bolt. And it\'s good for the hide, so this is the miracle that I\'ve been dreaming of bambi.',
user: minnie
)

Rant.create!(
title: 'A Sweep is As Lucky, Disney Park Churro, Up to the Highest Height Tuck and Roll\'s Drive \'em Buggies.',
body: 'When you wish upon a Disney ipsum... Cheech marin main street vehicles, single rider service, i can show you the world one hundred and one dalmatians. Clue me what to do, there\'s no happier bloke because he told us so max the sheepdog. Bear dumbo sorcerers of the magic kingdom when you pick a pear of the big pawpaw. Skyway to fantasyland cars muppetvision 3d, smart ass the weasel dr. calico mike the microphone sam edwards.',
user: donald
)

Rant.create!(
title: 'Dinosaur Nancy Tremaine Abis Mal, Red Car Trolley, So when the Cat Has Got Your Tongue Ko Olina, Hawaii.',
body: 'When you wish upon a Disney ipsum... Arista cogsworth disney\'s typhoon lagoon, rhoda dendron stories, i couldn\'t be fonder of my big home governor john ratcliffe. Because he told us so, pep-ilicious your heart starts beating yzma angus macbadger lucifer the cat prince. Show times now scrub good an\' hard we\'re following the leader wherever he may go disney. Feel right at home widow tweed, now i\'m the king it\'s very clear to me just married.',
user: daisy
)


Rant.create!(
title: 'I\'m Tired of Monkeyin\' Around!, Soarin\' over California, Disney Vacation Club Resort to Love Me by the Zuider Zee.',
body: 'When you wish upon a Disney ipsum... A broom for the flume, king arthur carousel, that\'s the only way to go i hear them calling alana. When you\'re with a sweep, the return of jafar aladar like a reindeer in the sky lucky. Amelia gabble atlantis the lost empire service a dream is a wish your heart makes andrina. Wild by design i had strings, an\' when ya got enough governor john ratcliffe mulan tony anselmo.',
user: minnie
)


Rant.create!(
title: 'The Ringmaster Psycho the Weasel, Kennel the Dodo, So This is the Miracle That I\'ve Been Dreaming of Entitlements.',
body: 'When you wish upon a Disney ipsum... That saved me aching nose, alice in wonderland, so when the cat has got your tongue adventures by disney. Url the wise little hen, lawrence the valet if you act like that bee acts, uh uh. California screamin\' get your hands full of water stupid the weasel mrs. potts vincenzo "vinny" santorini. Straight on till morning lady tremaine, mr. woolensworth robin hood house of mouse american southwest southwest splendors.',
user: minnie
)
