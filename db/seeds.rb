# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'database_cleaner'
# DatabaseCleaner.clean_with(:truncation)

User.create(
  first_name: 'Daphne',
  last_name: 'Blue',
  email: 'daphneb@yahoo.com',
  password: 'password',
  profile_url: 'daphneblue.com'
)

User.create(
  first_name: 'Hazel',
  last_name: 'Villareal',
  email: 'hazelv@gmail.com',
  password: 'password',
  profile_url: 'github.com/ennalezah'
)

hazel = User.find_by(first_name: 'Hazel')

hazel.owned_projects.create(
  title: 'What To-do?!',
  description: 'A simple to-do list app where users can add and delete items.',
  difficulty: 'Beginner'
)

daphne = User.find_by(first_name: 'Daphne')

daphne.owned_projects.create(
  title: 'Right on Time',
  description: 'Users should be able to start, pause, stop, and restart timer.',
  difficulty: 'Intermediate'
)