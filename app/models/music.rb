class Music
  attr_reader :track

  def initialize(genre: nil, year: nil)
    @track = Track.where(genre: genre, year: year).first
    if @track
      @track
    else
      query = "genre:#{genre} year:#{year}"
      @response = HTTParty.get("https://api.spotify.com/v1/search?q=#{query}&type=track")
      if @response["tracks"]["items"].empty?
        #don't create this in the database
        @response = HTTParty.get("https://api.spotify.com/v1/search?q=year:#{year}&type=track")
      else
        @track = Track.create!(name: popular_track, album: popular_album, artists: popular_artist, genre: genre, popularity: popularity, cover: album_cover)
      end
    end
  end


  def full_list
    @response["tracks"]["items"]
  end

  def tracks
    tracks = full_list.map { |t| t["name"] }
  end

  def most_popular
    sorted = full_list.sort_by {|t| t["popularity"]}
    sorted[-1]
  end

  def popular_track
    most_popular["name"]
  end

  def popularity
    most_popular["popularity"]
  end

  def popular_artist
    artists = most_popular["artists"]
    names = []
    artists.each {|a| names << a["name"] }
    names
  end

  def popular_album
    most_popular["album"]["name"]
  end

  def album_cover
    most_popular["album"]["images"][0]["url"]
  end

end
