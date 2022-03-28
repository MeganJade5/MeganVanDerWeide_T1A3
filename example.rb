Playlist = Array

class Song
  attr_accessor :name, :genre, :artist
end

songs = Playlist.new
print "How many songs do you want to add to your playlist? "
number_of_songs = gets.to_i

number_of_songs.times do |i|
  song_number = i + 1

  print "Enter song #{song_number}: "
  name = gets.chomp

  print "Enter genre for song #{song_number}: "
  genre = gets.chomp

  print "Enter artist of song #{song_number}: "
  artist = gets.chomp

  s = Song.new
  s.name   = name
  s.genre  = genre
  s.artist = artist

  songs << s
end

puts "This is your current playlist: "

songs.each do |song|
  puts "#{song.name} #{song.genre} #{song.artist}"
end