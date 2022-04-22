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

puts "Creating 16 shows, hosted by Connor, Brian & Ash"

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
  title: "Still Here",
  description: "Denise Scott and Judith Lucy know what the whole country is wondering, how did they cope with a global pandemic and the endless lockdowns of the last two years? Well, it turns out they were in lockdown together dealing with the same big questions as everyone else: how many meals can I eat in one day? Do I have a drinking problem?",
  price: 85.00,
  location: "200 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Judith Lucy & Denise Scott"
)
show.photo.attach(io: URI.open('https://comedy.com.au/wp-content/uploads/2022/01/JUDDEN22_comau_1000x1000-730x730.png'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "The Real Hero In All This",
  description: "The people of Melbourne have shown they can get through just about anything. But can they handle another stand-up show from Phil Wang? Hot on the heels of his critically acclaimed and critically delayed Netflix special Philly Philly Wang Wang, Phil brings his highly infective British-Malaysian variant of comedy to the Land Down Under once more.",
  price: 39.00,
  location: "163 Commercial Rd, South Yarra VIC 3141",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Phil Wang"
)
show.photo.attach(io: URI.open('https://res.cloudinary.com/uktv/image/upload/v1535718136/l5bu63z2s9r9j1tvtisd.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')


show = Show.create!(
  title: "Horndog",
  description: "Award winning stand-up Rose Matafeo has kissed nearly 10 men in her life, AKA she's a total horndog. Rose's debut special presents critically acclaimed stand-up about the anxieties of love as a romantic millennial.",
  price: 35.00,
  location: "33 Errol St, North Melbourne VIC 3051",
  datetime: DateTime.now,
  capacity: 50,
  user_id: connor.id,
  comedian: "Rose Matafeo"
)
show.photo.attach(io: URI.open('https://www.nme.com/wp-content/uploads/2021/02/Rose_Matafeo_BBC_Horndog.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "The Comeback Kid",
  description: "Armed with boyish charm and a sharp wit, the former SNL writer offers sly takes on marriage, his beef with babies and the time he met Bill Clinton.",
  price: 30.00,
  location: "31 Hardware Ln, Melbourne",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id,
  comedian: "John Mulaney"
)
show.photo.attach(io: URI.open('https://static1.srcdn.com/wordpress/wp-content/uploads/2019/06/john-mulaney-photo-comedy-special.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Delirious",
  description: "Eddie Murphy's raunchy, raucous stand-up comedy routine is captured for posterity on this tape.",
  price: 27.00,
  location: "54 Victoria St, Carlton",
  datetime: DateTime.now,
  capacity: 10,
  user_id: brian.id,
  comedian: "Eddie Murphy"
)
show.photo.attach(io: URI.open('https://static3.srcdn.com/wordpress/wp-content/uploads/2020/08/Eddie-Murphy-in-Delirious.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Cold Lasagne Hate Myself 1999",
  description: "James Acaster already has a reputation as a comedy craftsman, but here he has surpassed even his own superlative standards…the way Acaster constructs his story, the way he develops themes and teases out humorous strands, is true genius.",
  price: 85.00,
  location: "317 Brunswick St, Fitzroy VIC 3065",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "James Acaster"
)
show.photo.attach(io: URI.open('https://static2.srcdn.com/wordpress/wp-content/uploads/2020/03/James-Acaster-Repertoire-IMDb.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "The Closer",
  description: "As he closes out his slate of comedy specials, Dave takes the stage to try and set the record straight — and get a few things off his chest.",
  price: 250.00,
  location: "231 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id,
  comedian: "Dave Chappelle"
)
show.photo.attach(io: URI.open('https://static0.srcdn.com/wordpress/wp-content/uploads/2020/08/Dave-Chappelle-in-Killin-Them-Softly.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Nanette",
  description: "Australian comic Hannah Gadsby reshapes standard stand-up by pairing punchlines with personal revelations on gender, sexuality and childhood turmoil.",
  price: 22.00,
  location: "255 Bourke St, Melbourne",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id,
  comedian: "Hannah Gadsby"
)
show.photo.attach(io: URI.open('https://pyxis.nymag.com/v1/imgs/b36/650/357ca2c85d9610c67ea808be874889b94b-13-hannah-gadsby.rsquare.w700.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

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
  title: "Showman",
  description: "Charming comic Michael McIntyre talks family, technology, sharks, accents and the time he confused himself for a world leader in this stand-up special.",
  price: 70.00,
  location: "432 Church St, Richmond VIC 3121",
  datetime: DateTime.now,
  capacity: 20,
  user_id: connor.id,
  comedian: "Michael McIntyre"
)
show.photo.attach(io: URI.open('https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABdgAiKjecgmpWKVudppPf4lgZKGjspQrWtvxY_ke3uZ1gN0vCcE5OPbVzI3cuR80Frt_pRiD3YO4v7MpjnUl8LUWhzqv.jpg?r=6e8'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Hart of the City",
  description: "London. 1888. Three detectives. One rat. Jack The Ripper is on the loose in Whitechapel and Ella, Madi and Millie will stop at nothing to take him down.",
  price: 60.00,
  location: "54 Victoria St, Carlton",
  datetime: DateTime.now,
  capacity: 10,
  user_id: brian.id,
  comedian: "Kevin Hart"
)
show.photo.attach(io: URI.open('https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABQ-ROQc7T66Tb-Yt8fgCB3lhmxaWdY9X4EwhH1LV5O2lKqvlFQ74H0nHDND-UihVqsJd_daCJ4myu2Vq1pEvEAAS-QJW.jpg?r=152'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Not Normal",
  description: "Wanda Sykes tackles politics, reality TV, racism and the secret she'd take to the grave in this rollicking, no-holds-barred stand-up special.",
  price: 85.00,
  location: "19 Park St, South Melbourne VIC 3205",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Wanda Sykes"
)
show.photo.attach(io: URI.open('https://www.gannett-cdn.com/-mm-/55fd0207045c1eaca57adbee38998e39604a8332/c=0-222-3680-2292/local/-/media/2016/01/23/USATODAY/usatsports/450737402.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Travels With My Father",
  description: "Strap yourself in for the Victorian premiere of this brand-new comedy brought to you by the people behind the global smash hit, Faulty Towers The Dining Experience. It might just be the worst wedding reception you’ll ever go to – and you’re all invited!",
  price: 85.00,
  location: "5 Lt Collins St, Melbourne",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Jack Whitehall"
)
show.photo.attach(io: URI.open('https://e3.365dm.com/20/11/1600x900/skynews-jack-whitehall-bbc_5185579.jpg?20201126195448'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Skating Rink for Flies",
  description: "When Carl was a small boy at school, he asked the teacher how ants feel. He never got an answer all those years ago, but he still wants to know. Voted number one comedian two years running, come along and see Carl's brand-new show. A night where he ponders things we all think about but never mention. Things like plastic bags, peanut butter and the possible emotions of an ant. There is no point to this show other than to make you laugh as much as possible. Funny stories from a bloke with a funny head. What more could you ask for? (Bit of wee guarantee)",
  price: 22.00,
  location: "520 High St, Northcote VIC 3070",
  datetime: DateTime.now,
  capacity: 40,
  user_id: ash.id,
  comedian: "Carl Barron"
)
show.photo.attach(io: URI.open('https://is3-ssl.mzstatic.com/image/thumb/Video128/v4/8a/27/75/8a277512-3a8e-1b6d-c382-723a174ee1f2/Jobb39d1dfe-350e-48d6-99fb-452097326d72-101383801-PreviewImage_preview_image_video_sdr-Time1541046261672.png/1200x675.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

show = Show.create!(
  title: "Son of Patricia",
  description: "Daily Show host Trevor Noah touches on tacos, runaway snakes, camping, racism immunity and lessons he learned from his mother in this comedy special.",
  price: 85.00,
  location: "400 Sydney Rd, Brunswick VIC 3056",
  datetime: DateTime.now,
  capacity: 100,
  user_id: brian.id,
  comedian: "Trevor Noah"
)
show.photo.attach(io: URI.open('https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-04/trevor-noah-te-220403-e1e082.jpg'), filename: "#{show.title.downcase}.jpeg", content_type: 'image/jpeg')

puts "Finished creating 16 shows"
