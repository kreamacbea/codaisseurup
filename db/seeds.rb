# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

laura = User.create(email: "laura@codaisseurup.com", password: "ikbengek")

event = Event.create(name: "Sokkenbreier", description: "Leer hoe je lekkere warme wollen sokken kunt breien", location: "Den Haag", price: 24.95, capacity: 15, includes_food: true, includes_drinks: true, starts_at: 2017-09-15T03:05:06+07:00, ends_at: 2017-09-15T04:05:06+07:00, active: true, user: laura)
