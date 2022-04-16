# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

Show.destroy_all
User.destroy_all

puts "Creating 4 users - Connor, Brian, Ash & Sarah. Password is 'password'. Username is first name all lowercase."
connor = User.create!(
  email: "connor@test.com",
  password: 'password',
  username: "connor",
  first_name: "Connor",
  last_name: "Sanderson",
  date_of_birth: DateTime.now
)

brian = User.create!(
  email: "brian@test.com",
  password: 'password',
  username: "brian",
  first_name: "Brian",
  last_name: "Huynh",
  date_of_birth: DateTime.now
)

ash = User.create!(
  email: "ashmeet@test.com",
  password: 'password',
  username: "ashmeet",
  first_name: "Ashmeet",
  last_name: "Khurana",
  date_of_birth: DateTime.now
)

sarah = User.create!(
  email: "sarah.pelham@gmail.com",
  password: 'password',
  username: "sarah",
  first_name: "Sarah",
  last_name: "Pelham",
  date_of_birth: DateTime.now
)
puts "Finished creating 4 users - Connor, Brian & Ash host shows, Sarah is a customer."

puts "Creating 5 shows, hosted by Connor, Brian & Ash"
Show.create!(
  title: "2 Englishmen and an Aussie",
  description: "After an amazing season in the 2021 Perth and Adelaide Fringe festivals this hilarious show is coming to Melbourne. This is an hour of laugh after laugh comedy with guest comedians from across the Festival. Why see one comedian when you can see three.",
  price: 25.00,
  location: "96 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id
)

Show.create!(
  title: "Where You From, From?",
  description: "Thrty countries, ten schools, six languages (ok, not totally fluently, but who’s counting?)... so, where am I from? Good question. After selling out her show internationally, including at the Just for Laughs Festival in 2019, Melbourne International Comedy Festival in 2019 and FringeWorld in Perth 2020, Canadian Academy Award-nominated actress and comedian, Aliya Kanani, is excited to bring her sought-after show back to Melbourne!",
  price: 30.00,
  location: "43 Hardware Ln, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id
)

Show.create!(
  title: "Catching Jack",
  description: "London. 1888. Three detectives. One rat. Jack The Ripper is on the loose in Whitechapel and Ella, Madi and Millie will stop at nothing to take him down.",
  price: 27.00,
  location: "54 Victoria St, Carlton",
  datetime: DateTime.now,
  capacity: 10,
  user_id: brian.id
)

Show.create!(
  title: "Confetti and Chaos",
  description: "Strap yourself in for the Victorian premiere of this brand-new comedy brought to you by the people behind the global smash hit, Faulty Towers The Dining Experience. It might just be the worst wedding reception you’ll ever go to – and you’re all invited!",
  price: 85.00,
  location: "111 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id
)

Show.create!(
  title: "Wax Quizzical Live!",
  description: "How would you go on a trivia table with a Jerry Springer-wannabe, Hugh Jackman’s French Bulldog, or even the devil himself? With contestant Mark Watson (UK), comedians in character Chris Parker (NZ) and Michelle Brasier, and host Kyran Wheatley. Kyran Wheatley’s podcast Wax Quizzical puts this to the test, with some of the Festival’s best comedians improvising as their own wild character creations to help a special guest contestant with the Saturday Paper’s weekly quiz.",
  price: 22.00,
  location: "231 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id
)
puts "Finished creating 5 shows"
