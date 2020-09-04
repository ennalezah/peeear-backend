# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

# User.create(
#   first_name: 'Daphne',
#   last_name: 'Blue',
#   email: 'daphneb@yahoo.com',
#   password: 'password',
#   profile_url: 'daphneblue.com'
# )

# User.create(
#   first_name: 'Hazel',
#   last_name: 'Villareal',
#   email: 'hazelv@gmail.com',
#   password: 'password',
#   profile_url: 'github.com/ennalezah'
# )

# hazel = User.find_by(first_name: 'Hazel')

# hazel.owned_projects.create(
#   title: 'What To-do?!',
#   description: 'A simple to-do list app where users can add and delete items.',
#   difficulty: 'Beginner'
# )

# daphne = User.find_by(first_name: 'Daphne')

# daphne.owned_projects.create(
#   title: 'Right on Time',
#   description: 'Users should be able to start, pause, stop, and restart timer.',
#   difficulty: 'Intermediate'
# )

Project.create([
  {
    title: 'Favorite Coffee',
    description: 'Java chicory, black doppio and roast cream mocha turkish strong. Blue mountain doppio black, chicory, sugar medium, single shot a wings blue mountain turkish. Viennese et, cinnamon, turkish lungo qui cappuccino kopi-luwak. Black, dripper, to go medium espresso lungo in, and plunger pot latte sweet redeye. Half and half, galão, single shot wings beans bar that con panna macchiato dark foam galão.', 
    difficulty: 'Beginner',
    first_name: 'Hazel',
    last_name: 'Villareal',
    email: 'hazelv@gmail.com'
  },

  {
    title: 'Adopt a Cat',
    description: 'Nap all day cat dog hate mouse eat string barf pillow no baths hate everything but kitty poochy. Sleep on keyboard toy mouse squeak roll over. Mesmerizing birds. Poop on grasses licks paws destroy couch intently sniff hand. The dog smells bad gnaw the corn cob.', 
    difficulty: 'Beginner',
    first_name: 'Daphne',
    last_name: 'Blue',
    email: 'daphneb@gmail.com'
  },

  {
    title: 'Movie Quotes',
    description: 'Pretty Mediocre photographic fakery, they cut off your brother’s hair. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn’t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Biff. I will. Oh.', 
    difficulty: 'Intermediate',
    first_name: 'Christian',
    last_name: 'Villareal',
    email: 'christianv@gmail.com'
  },

  {
    title: 'Project Management',
    description: 'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.', 
    difficulty: 'Intermediate',
    first_name: 'Frazier',
    last_name: 'Crane',
    email: 'frazierc@yahoo.com'
  },

  {
    title: 'Nonprofit Resources',
    description: 'Equal opportunity, white paper mobilize, problem-solvers overcome injustice thought leadership, transparent collaborative cities human-centered justice social intrapreneurship inclusion shared value collaborative consumption. Disrupt; synergy energize resist academic agile; targeted. Optimism thought leadership; cultivate accessibility mass incarceration impact; to resist thought provoking families problem-solvers do-gooder policymaker.', 
    difficulty: 'Advanced',
    first_name: 'Harold',
    last_name: 'Lloyd',
    email: 'haroldl@aol.com'
  },

  {
    title: 'Stars and Planet Finder',
    description: 'We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win.', 
    difficulty: 'Advanced',
    first_name: 'Cammie',
    last_name: 'Dahl',
    email: 'cammied@yahoo.com'
  }
])