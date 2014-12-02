require 'csv'
require 'pry'
require_relative 'album'
require_relative 'track'

albums = []

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = Track.new(row[:album_id], row[:id], row[:track_number], row[:duration_ms], row[:title])#row.to_hash

  album = albums.find { |a| a.id == row[:album_id] }

  # if the album hasn't been added to the albums array yet, add it
  if album.nil?
    album = Album.new(row[:album_id], row[:album_name], row[:artists])
    albums << album

  end

  # add the track to the album's @tracks instance variable
    album.tracks << track
  #  [0,1,3,4] << 2
  #binding.pry
end

# print out the summary for each album
albums.each do |album|
  puts album.summary
end
