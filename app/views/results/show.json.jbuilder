json.success @movie.success
json.results do
  json.movie do
    json.title @movie.movie.title
    json.year @movie.movie.year
    json.directors @movie.movie.directors do |d|
      json.name d["name"]
    end
    json.actors @movie.movie.actors do |a|
      json.name a["name"]
    end
  end
  json.track do
    json.track_id @track.id
    json.track_name @track.name
    json.artists @track.artists
    json.album @track.album
    json.spotify_popularity @track.popularity
    json.genre @track.genre
    json.album_cover @track.cover
  end
end
