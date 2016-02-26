require 'test_helper'

class MusicTest < ActiveSupport::TestCase

  test "can create a track" do
    music = Music.new(genre: "pop", year: 2015)
    assert music
    assert music.track.name, "Want to want me"
  end

  test "track can't be created if genre isn't found" do
    music = Music.new(genre: "pop", year: 1990)
    assert music
    refute music.track
  end


end
