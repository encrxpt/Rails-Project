# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Publisher.destroy_all
Author.destroy_all
Genre.destroy_all
Book.destroy_all

30.times do
  @author = Author.create(
    name: Faker::Book.author
  )

  @genre = Genre.create(
    name: Faker::Book.genre
  )

  @publisher = Publisher.create(
    name: Faker::Book.publisher
  )

  rand(15..30).times do
    a = Author.all.sample
    g = Genre.all.sample
    publisher = Publisher.all.sample
    @book = Book.create(
      title: Faker::Book.title,
      published: Faker::Time.backward(days: rand(30..800)),
      author: a,
      genre: g,
      publisher: publisher
    )
  end
end

puts "Generated #{Author.count} authors"
puts "Generated #{Genre.count} genres"
puts "Generated #{Publisher.count} publishers"
puts "Generated #{Book.count} books"