Event.destroy_all



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Assume you have a model called Event for this table

# Seed 1
Event.create!(
  title: "Sports Tournament",
  datetime: DateTime.new(2023, 6, 30, 10, 0, 0),
  description: "Join us for an exciting sports tournament.",
  max_attend: 50,
  category: ["sport"],
  price_per: 10,
  user_id: User.all.sample.id,
  address: "1600 Pennsylvania Avenue NW, Washington, D.C., United States
  "
)

# Seed 2
Event.create!(
  title: "Concert",
  datetime: DateTime.new(2023, 7, 15, 18, 30, 0),
  description: "Experience a live music concert with top artists.",
  max_attend: 100,
  category: ["music"],
  price_per: 25,
  user_id: User.all.sample.id,
  address: "221B Baker Street, London, United Kingdom
  "
)

# Seed 3
Event.create!(
  title: "Food Festival",
  datetime: DateTime.new(2023, 8, 5, 12, 0, 0),
  description: "Indulge in a variety of delicious foods from around the world.",
  max_attend: 200,
  category: ["food"],
  price_per: 0,
  user_id: User.all.sample.id,
  address: "10 Downing Street, London, United Kingdom
  "
)

# Seed 4
Event.create!(
  title: "Movie Night",
  datetime: DateTime.new(2023, 7, 1, 20, 0, 0),
  description: "Enjoy a movie screening under the stars.",
  max_attend: 50,
  category: ["movies"],
  price_per: 5,
  user_id: User.all.sample.id,
  address: "1 Infinite Loop, Cupertino, California, United States
  "
)

# Seed 5
Event.create!(
  title: "Hiking Adventure",
  datetime: DateTime.new(2023, 7, 10, 9, 0, 0),
  description: "Embark on a thrilling hiking adventure in the mountains.",
  max_attend: 20,
  category: ["outdoor"],
  price_per: 0,
  user_id: User.all.sample.id,
  address: "1 Circular Quay East, Sydney, New South Wales, Australia

  "
)

# Seed 6
Event.create!(
  title: "Football Match",
  datetime: DateTime.new(2023, 7, 5, 16, 30, 0),
  description: "Witness an intense football match between two rival teams.",
  max_attend: 100,
  category: ["sport"],
  price_per: 15,
  user_id: User.all.sample.id,
  address: "5 Avenue Anatole France, 75007 Paris, France

  "
)

# Seed 7
Event.create!(
  title: "Music Festival",
  datetime: DateTime.new(2023, 9, 2, 14, 0, 0),
  description: "Experience the biggest music festival of the year.",
  max_attend: 500,
  category: ["music"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "1600 Amphitheatre Parkway, Mountain View, California, United States

  "
)

# Seed 8
Event.create!(
  title: "Gourmet Cooking Class",
  datetime: DateTime.new(2023, 7, 20, 18, 0, 0),
  description: "Learn the art of gourmet cooking from renowned chefs.",
  max_attend: 30,
  category: ["food"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "200 Queen's Gate, South Kensington, London, United Kingdom
  "
)

# Seed 9
Event.create!(
  title: "Sci-Fi Movie Marathon",
  datetime: DateTime.new(2023, 7, 8, 12, 0, 0),
  description: "Immerse yourself in a marathon of sci-fi movies.",
  max_attend: 50,
  category: ["movies"],
  price_per: 10,
  user_id: User.all.sample.id,
  address: "33 Yonge Street, Toronto, Ontario, Canada
  "
)

# Seed 10
Event.create!(
  title: "Nature Photography Workshop",
  datetime: DateTime.new(2023, 8, 12, 9, 30, 0),
  description: "Enhance your photography skills in a beautiful natural setting.",
  max_attend: 25,
  category: ["outdoor"],
  price_per: 30,
  user_id: User.all.sample.id,
  address: "1 Times Square, New York City, New York, United States
  "
)


# Assume you have a model called User for this table


Event.create!(
  title: "Art Exhibition",
  datetime: DateTime.new(2023, 9, 10, 12, 0, 0),
  description: "Discover stunning works of art from talented artists in this captivating exhibition.",
  max_attend: 100,
  category: ["outdoor"],
  price_per: 20,
  user_id: User.all.sample.id,
  address: "8 Boulevard du Palais, 75001 Paris, France"
)

Event.create!(
  title: "Food Tasting",
  datetime: DateTime.new(2023, 10, 15, 19, 0, 0),
  description: "Indulge in a delightful food tasting experience, sampling a variety of mouthwatering dishes.",
  max_attend: 50,
  category: ["food"],
  price_per: 30,
  user_id: User.all.sample.id,
  address: "Via del Corso, 00187 Rome, Italy"
)

Event.create!(
  title: "Music Festival",
  datetime: DateTime.new(2023, 11, 20, 18, 0, 0),
  description: "Experience the thrill of live music performances from top artists across various genres.",
  max_attend: 5000,
  category: ["music"],
  price_per: 75,
  user_id: User.all.sample.id,
  address: "Mühlenstraße 13-15, 10243 Berlin, Germany"
)

Event.create!(
  title: "Film Screening",
  datetime: DateTime.new(2023, 12, 5, 20, 0, 0),
  description: "Sit back and enjoy a special screening of an acclaimed film followed by a Q&A session.",
  max_attend: 150,
  category: ["movies"],
  price_per: 15,
  user_id: User.all.sample.id,
  address: "Covent Garden, London WC2E 9DD, United Kingdom"
)

Event.create!(
  title: "Fashion Show",
  datetime: DateTime.new(2023, 11, 12, 19, 0, 0),
  description: "Witness the latest fashion trends and designs in this glamorous runway show.",
  max_attend: 200,
  category: ["outdoor"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "Avenue Montaigne, 75008 Paris, France"
)

# Create more event seeds with realistic data and European addresses

# ...


Event.create!(
  title: "Technology Summit",
  datetime: DateTime.new(2023, 9, 20, 9, 0, 0),
  description: "Join us for a comprehensive technology summit showcasing the latest advancements in the industry.",
  max_attend: 300,
  category: ["outdoor"],
  price_per: 150,
  user_id: User.all.sample.id,
  address: "Rue du Faubourg Saint-Honoré, 75008 Paris, France"
)

Event.create!(
  title: "Classical Music Concert",
  datetime: DateTime.new(2023, 10, 10, 20, 0, 0),
  description: "Immerse yourself in the enchanting melodies of classical music performed by renowned musicians.",
  max_attend: 150,
  category: ["music"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "Am Hof 1, 1010 Vienna, Austria"
)

Event.create!(
  title: "Contemporary Art Exhibition",
  datetime: DateTime.new(2023, 11, 8, 11, 0, 0),
  description: "Experience the creativity of contemporary artists through a diverse collection of artworks.",
  max_attend: 80,
  category: ["outdoor"],
  price_per: 15,
  user_id: User.all.sample.id,
  address: "Carrer de Montcada, 08003 Barcelona, Spain"
)

Event.create!(
  title: "Gastronomy Festival",
  datetime: DateTime.new(2023, 12, 12, 17, 0, 0),
  description: "Embark on a culinary journey at the gastronomy festival, where you'll savor exquisite flavors from around the world.",
  max_attend: 200,
  category: ["food"],
  price_per: 40,
  user_id: User.all.sample.id,
  address: "Potsdamer Platz, 10785 Berlin, Germany"
)

Event.create!(
  title: "Yoga and Meditation Retreat",
  datetime: DateTime.new(2023, 8, 28, 9, 30, 0),
  description: "Rejuvenate your mind, body, and soul with a revitalizing yoga and meditation retreat in a serene natural setting.",
  max_attend: 20,
  category: ["sport"],
  price_per: 200,
  user_id: User.all.sample.id,
  address: "Rua Augusta, 1100-053 Lisbon, Portugal"
)

# Create more event seeds with realistic data

# ...
Event.create!(
  title: "Fashion Week",
  datetime: DateTime.new(2023, 9, 25, 18, 0, 0),
  description: "Celebrate the latest fashion trends and designs at the prestigious Fashion Week event.",
  max_attend: 500,
  category: ["outdoor"],
  price_per: 75,
  user_id: User.all.sample.id,
  address: "Piazza del Duomo, 20122 Milan, Italy"
)

Event.create!(
  title: "Jazz Festival",
  datetime: DateTime.new(2023, 10, 15, 19, 30, 0),
  description: "Immerse yourself in the soulful tunes and improvisations of renowned jazz musicians.",
  max_attend: 300,
  category: ["music"],
  price_per: 60,
  user_id: User.all.sample.id,
  address: "Kungsportsavenyn, 411 36 Gothenburg, Sweden"
)

Event.create!(
  title: "Artisan Craft Fair",
  datetime: DateTime.new(2023, 11, 5, 10, 0, 0),
  description: "Discover unique handmade crafts and artworks created by talented artisans.",
  max_attend: 100,
  category: ["outdoor"],
  price_per: 10,
  user_id: User.all.sample.id,
  address: "Plaza Mayor, 28012 Madrid, Spain"
)

Event.create!(
  title: "Wine Tasting Tour",
  datetime: DateTime.new(2023, 12, 2, 15, 0, 0),
  description: "Embark on a delightful wine tasting journey through scenic vineyards and cellar tours.",
  max_attend: 40,
  category: ["food"],
  price_per: 30,
  user_id: User.all.sample.id,
  address: "Rua das Flores, 4050-266 Porto, Portugal"
)

Event.create!(
  title: "Fitness Expo",
  datetime: DateTime.new(2023, 9, 18, 9, 0, 0),
  description: "Explore the latest fitness equipment, classes, and nutrition tips at the Fitness Expo.",
  max_attend: 200,
  category: ["sport"],
  price_per: 20,
  user_id: User.all.sample.id,
  address: " 1 Western Gateway, London, United Kingdom"
)

# Create more event seeds with realistic data

# ...
Event.create!(
  title: "Culinary Festival",
  datetime: DateTime.new(2023, 10, 8, 12, 0, 0),
  description: "Experience a gastronomic journey with an array of delectable dishes and culinary demonstrations.",
  max_attend: 150,
  category: ["food"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "Leidseplein, 1017 PT Amsterdam, Netherlands"
)

Event.create!(
  title: "Film Premiere",
  datetime: DateTime.new(2023, 11, 20, 19, 0, 0),
  description: "Be the first to witness the highly anticipated film premiere of a blockbuster movie.",
  max_attend: 250,
  category: ["movies"],
  price_per: 30,
  user_id: User.all.sample.id,
  address: "Karl-Marx-Allee 33, 10178 Berlin, Germany"
)

Event.create!(
  title: "Tech Summit",
  datetime: DateTime.new(2023, 12, 10, 9, 0, 0),
  description: "Discover the latest advancements in technology through insightful talks and interactive workshops.",
  max_attend: 300,
  category: ["outdoor"],
  price_per: 100,
  user_id: User.all.sample.id,
  address: "Plac Europejski 2, 00-844 Warsaw, Poland"
)

Event.create!(
  title: "Fashion Exhibition",
  datetime: DateTime.new(2023, 9, 28, 10, 0, 0),
  description: "Immerse yourself in the world of fashion with stunning displays of designer garments and accessories.",
  max_attend: 100,
  category: ["outdoor"],
  price_per: 25,
  user_id: User.all.sample.id,
  address: "Plaza de Cibeles, 28014 Madrid, Spain"
)

Event.create!(
  title: "Music Concert",
  datetime: DateTime.new(2023, 11, 10, 20, 0, 0),
  description: "Enjoy a mesmerizing live music concert featuring talented artists and captivating performances.",
  max_attend: 500,
  category: ["music"],
  price_per: 50,
  user_id: User.all.sample.id,
  address: "Roland-Rainer-Platz 1, 1150 Vienna, Austria"
)

# Create more event seeds with realistic data

# ...
