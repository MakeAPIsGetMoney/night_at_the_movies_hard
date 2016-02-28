require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  test "can create a track" do
    track = Track.create!(name: "Song 1", album: "Album 1", genre: "pop", year: "2015", popularity: 53)
    assert_equal track.name, "Song 1"
  end

  test "name is required for track" do
    track = Track.create(album: "Album")
    refute track.valid?
  end
end
