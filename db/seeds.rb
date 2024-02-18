# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist_1 = Artist.create!(name: Faker::Music.band)
artist_2 = Artist.create!(name: Faker::Music.band)
artist_3 = Artist.create!(name: Faker::Music.band)

10.times do
  song = Song.create!(title: Faker::Music.album, 
              length: Faker::Number.decimal(l_digits: 2), 
              filesize: Faker::Number.decimal(l_digits: 2),
              artist_id: artist_1.id)
  Download.create!(download_date: Faker::Time.between(from: DateTime.now - 100, to: DateTime.now), song_id: song.id)
end

10.times do
  song = Song.create!(title: Faker::Music.album, 
              length: Faker::Number.decimal(l_digits: 2), 
              filesize: Faker::Number.decimal(l_digits: 2),
              artist_id: artist_2.id)
  Download.create!(download_date: Faker::Time.between(from: DateTime.now - 100, to: DateTime.now), song_id: song.id)
end

10.times do
  song = Song.create!(title: Faker::Music.album, 
              length: Faker::Number.decimal(l_digits: 2), 
              filesize: Faker::Number.decimal(l_digits: 2),
              artist_id: artist_3.id)
  Download.create!(download_date: Faker::Time.between(from: DateTime.now - 100, to: DateTime.now), song_id: song.id)
end
