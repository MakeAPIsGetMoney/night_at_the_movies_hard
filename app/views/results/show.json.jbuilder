json.track do
  json.track_id @track.id
  json.track_name @track.name
  json.artists @track.artists
  json.album @track.album
  json.spotify_popularity @track.popularity
  json.genre @track.genre
  json.album_cover @track.cover
end
