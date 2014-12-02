require_relative 'track'

class Album
  attr_reader :id, :name, :artists, :tracks

  def initialize (id, name, artists)
    @id = id
    @name = name
    @artists = artists
    @tracks = []
  end

  def get_tracks
    @track_array = []
    @tracks.each do |track|
      @track_array << "- #{track.track_number}. #{track.title}"
    end
    @track_array
  end

  def get_duration
    @dur_array = []
    @tracks.each do |track|
      @dur_array << track.duration_ms
    end
    sumfinal = @dur_array.inject{|sum,x| sum.to_i + x.to_i }
    seconds=(sumfinal.to_i/1000)%60;
    minutes=((sumfinal.to_i-seconds)/1000)/60;
    "#{minutes} minutes and #{seconds} seconds"
  end

  def summary
    print "\nName: #{@name}\nArtist(s): #{@artists}\nDuration: #{get_duration} \nTracks:\n"
    get_tracks
  end

end
