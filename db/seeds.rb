Event.destroy_all
User.destroy_all

user = User.create!(
  email: "userda@example.com",
  password: "encrypted_password",
  encrypted_password: "encrypted_password",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)
# You can add more user seeds as needed
User.create!(
  email: "another_usedar@example.com",
  password: "another_encrypted_password",
  encrypted_password: "another_encrypted_password",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)

# Assume you have a model called User for this table

User.create!(
  email: "user3da@example.com",
  password: "encrypted_password",
  encrypted_password: "encrypted_password",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)

# You can add more user seeds as needed
User.create!(
  email: "another_usader31@example.com",
  password: "another_encrypted_password",
  encrypted_password: "another_encrypted_password",
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
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
  user_id: user,
  address: "1 Times Square, New York City, New York, United States
  "
)


# Assume you have a model called User for this table
