# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Theme.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

# Themes
outdoor_and_adventure = Theme.create!(name: "Outdoor & Adventure")
tech = Theme.create!(name: "Tech")
family = Theme.create!(name: "Family")
health_and_wellbeing = Theme.create!(name: "Health & Wellbeing")
sport_and_fitness = Theme.create!(name: "Sport & Fitness")
learn = Theme.create!(name: "Learn")
photography = Theme.create!(name: "Photography")
food_and_drinks = Theme.create!(name: "Food & Drinks")

# Users
laura = User.create!(email: "laura@codaisseurup.com", password: "ikbengek")
wouter = User.create!(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create!(email: "matt@codaisseurbnb.com", password: "abcd1234")

# Events
event_1 = Event.create!(name: "De Geitenwollen Sokkenbreijer", description: "Leer hoe je lekkere warme wollen sokken kunt breien", location: "Den Haag", price: 24.95, capacity: 15, includes_food: true, includes_drinks: true, starts_at: 20170905190000, ends_at: 20170905210000, active: true, user: laura, themes: [learn, family, sport_and_fitness])

event_2 = Event.create!(name: "Workshop Punnikken", description: "We gaan er lekker op los punniken in deze workshop", location: "Rijswijk", price: 7.50, capacity: 10, includes_food: false, includes_drinks: true, starts_at: 20170905140000, ends_at: 20170905170000, active: true, user: laura, themes: [learn, family])

event_3 = Event.create!(name: "Het Leven van een Zakkenroller", description: "Lezing door Sjaak alias Sjakkenroller", location: "Wassenaar", price: 4.95, capacity: 25, includes_food: false, includes_drinks: false, starts_at: 20170905200000, ends_at: 20170905223000, active: true, user: laura, themes: [learn, health_and_wellbeing, tech])

event_4 = Event.create!(name: "Workshop Punniken", description: "In deze workshop gaan we lekker punniken", location: "Rijswijk", price: 7.95, capacity: 10, includes_food: false, includes_drinks: false, starts_at: 20170907200000, ends_at: 20170907223000, active: true, user: laura, themes: [learn, family])

# Photos
photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/db926f0zb/image/upload/v1504778559/hero-home_ikkrbd.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/db926f0zb/image/upload/v1504778561/3309_abjwyg.jpg", event: event_1)
photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/db926f0zb/image/upload/v1504778561/2291_qvkr3o.jpg", event: event_1)
photo4 = Photo.create!(remote_image_url: "https://res.cloudinary.com/db926f0zb/image/upload/v1504778560/2281_drzuyv.jpg", event: event_2)
