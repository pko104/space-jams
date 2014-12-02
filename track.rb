class Track
  attr_reader :album_id, :id, :track_number, :duration_ms, :title

  def initialize (album_id, id, track_number, duration_ms, title)
    @album_id = album_id
    @id = id
    @title = title
    @track_number = track_number
    @duration_ms = duration_ms
  end

end


