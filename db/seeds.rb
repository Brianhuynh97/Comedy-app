# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
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

puts "Creating 11 shows, hosted by Connor, Brian & Ash"


show = Show.create!(
  title: "The Oscars: Get my wife's name out of your **** mouth",
  description: "Chris Rock takes the stage in Melbourne for a comedy special filled with searing observations on fatherhood, infidelity and American politics. With a guest appearance from Will Smith, the night is sure to be entertaining.",
  price: 50.00,
  location: "96 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: connor.id,
  comedian: "Chris Rock"
)
show.photo.attach(io: URI.open('https://deadline.com/wp-content/uploads/2022/03/Will-Smith-Chris-Rock-1-e1648448431909.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "The Comeback Kid",
  description: "Armed with boyish charm and a sharp wit, the former SNL writer offers sly takes on marriage, his beef with babies and the time he met Bill Clinton.",
  price: 30.00,
  location: "43 Hardware Ln, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id,
  comedian: "John Mulaney"
)
show.photo.attach(io: URI.open('https://static1.srcdn.com/wordpress/wp-content/uploads/2019/06/john-mulaney-photo-comedy-special.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Catching Jack",
  description: "London. 1888. Three detectives. One rat. Jack The Ripper is on the loose in Whitechapel and Ella, Madi and Millie will stop at nothing to take him down.",
  price: 27.00,
  location: "54 Victoria St, Carlton",
  datetime: DateTime.now,
  capacity: 10,
  user_id: brian.id,
  comedian: "Eddie Murphy"
)
show.photo.attach(io: URI.open('https://static3.srcdn.com/wordpress/wp-content/uploads/2020/08/Eddie-Murphy-in-Delirious.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Confetti and Chaos",
  description: "Strap yourself in for the Victorian premiere of this brand-new comedy brought to you by the people behind the global smash hit, Faulty Towers The Dining Experience. It might just be the worst wedding reception you’ll ever go to – and you’re all invited!",
  price: 85.00,
  location: "111 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "James Acaster"
)
show.photo.attach(io: URI.open('https://static2.srcdn.com/wordpress/wp-content/uploads/2020/03/James-Acaster-Repertoire-IMDb.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Wax Quizzical Live!",
  description: "How would you go on a trivia table with a Jerry Springer-wannabe, Hugh Jackman’s French Bulldog, or even the devil himself? With contestant Mark Watson (UK), comedians in character Chris Parker (NZ) and Michelle Brasier, and host Kyran Wheatley. Kyran Wheatley’s podcast Wax Quizzical puts this to the test, with some of the Festival’s best comedians improvising as their own wild character creations to help a special guest contestant with the Saturday Paper’s weekly quiz.",
  price: 22.00,
  location: "231 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id,
  comedian: "Dave Chappell"
)
show.photo.attach(io: URI.open('https://static0.srcdn.com/wordpress/wp-content/uploads/2020/08/Dave-Chappelle-in-Killin-Them-Softly.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Offensive Jokes",
  description: "After an amazing season in the 2021 Perth and Adelaide Fringe festivals this hilarious show is coming to Melbourne. This is an hour of laugh after laugh comedy with guest comedians from across the Festival. Why see one comedian when you can see three.",
  price: 25.00,
  location: "96 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id,
  comedian: "Jimmy Carr"
)
show.photo.attach(io: URI.open('https://e3.365dm.com/22/02/1600x900/skynews-jimmy-carr-netflix_5665369.jpg?bypass-service-worker&20220208182656'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Comedy Roadshow!",
  description: "Thrty countries, ten schools, six languages (ok, not totally fluently, but who’s counting?)... so, where am I from? Good question. After selling out her show internationally, including at the Just for Laughs Festival in 2019, Melbourne International Comedy Festival in 2019 and FringeWorld in Perth 2020, Canadian Academy Award-nominated actress and comedian, Aliya Kanani, is excited to bring her sought-after show back to Melbourne!",
  price: 30.00,
  location: "43 Hardware Ln, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id,
  comedian: "Michael McIntyre"
)
show.photo.attach(io: URI.open('https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABdgAiKjecgmpWKVudppPf4lgZKGjspQrWtvxY_ke3uZ1gN0vCcE5OPbVzI3cuR80Frt_pRiD3YO4v7MpjnUl8LUWhzqv.jpg?r=6e8'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Hart of the City",
  description: "London. 1888. Three detectives. One rat. Jack The Ripper is on the loose in Whitechapel and Ella, Madi and Millie will stop at nothing to take him down.",
  price: 27.00,
  location: "54 Victoria St, Carlton",
  datetime: DateTime.now,
  capacity: 10,
  user_id: brian.id,
  comedian: "Kevin Hart"
)
show.photo.attach(io: URI.open('https://www.giantfreakinrobot.com/wp-content/uploads/2021/01/Kevin-Hart-1-900x506.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Travels With My Father",
  description: "Strap yourself in for the Victorian premiere of this brand-new comedy brought to you by the people behind the global smash hit, Faulty Towers The Dining Experience. It might just be the worst wedding reception you’ll ever go to – and you’re all invited!",
  price: 85.00,
  location: "111 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Jack Whitehall"
)
show.photo.attach(io: URI.open('https://e3.365dm.com/20/11/1600x900/skynews-jack-whitehall-bbc_5185579.jpg?20201126195448'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Drinking With A Fork",
  description: "How would you go on a trivia table with a Jerry Springer-wannabe, Hugh Jackman’s French Bulldog, or even the devil himself? With contestant Mark Watson (UK), comedians in character Chris Parker (NZ) and Michelle Brasier, and host Kyran Wheatley. Kyran Wheatley’s podcast Wax Quizzical puts this to the test, with some of the Festival’s best comedians improvising as their own wild character creations to help a special guest contestant with the Saturday Paper’s weekly quiz.",
  price: 22.00,
  location: "231 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id,
  comedian: "Carl Barron"
)
show.photo.attach(io: URI.open('https://is3-ssl.mzstatic.com/image/thumb/Video128/v4/8a/27/75/8a277512-3a8e-1b6d-c382-723a174ee1f2/Jobb39d1dfe-350e-48d6-99fb-452097326d72-101383801-PreviewImage_preview_image_video_sdr-Time1541046261672.png/1200x675.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "The Daily Show",
  description: "Strap yourself in for the Victorian premiere of this brand-new comedy brought to you by the people behind the global smash hit, Faulty Towers The Dining Experience. It might just be the worst wedding reception you’ll ever go to – and you’re all invited!",
  price: 85.00,
  location: "111 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Trevor Noah"
)
show.photo.attach(io: URI.open('https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-04/trevor-noah-te-220403-e1e082.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

puts "Finished creating 11 shows"
