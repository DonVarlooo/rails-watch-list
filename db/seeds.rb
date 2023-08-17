# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all
50.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: (rand * 10).round
  )
end
puts 'Tout a bien été généré pour les moovies'

List.create(name: 'Action')
List.create(name: 'Animation')
List.create(name: 'Cartoon')
List.create(name: 'Drame')
List.create(name: 'Romantique')
List.create(name: 'Humour')
puts 'Tout a bien été généré pour les lists'
