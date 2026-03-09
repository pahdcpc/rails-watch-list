# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Limpando a base de dados..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Criando filmes..."
Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union...", poster_url: "https://image.tmdb.org", rating: 6.9)
Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder...", poster_url: "https://image.tmdb.org", rating: 8.7)
Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story...", poster_url: "https://image.tmdb.org", rating: 7.9)

puts "Criando uma lista de exemplo..."
List.create!(name: "Favoritos")

puts "Feito! Criados #{Movie.count} filmes e #{List.count} lista."
