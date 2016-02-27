require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "move has many actors" do
    m = Movie.create(title: "The Matrix", year: "1999", runtime: "137 min")
    m.actors.create(name: "Keanu Reeves", character: "Neo")
    m.actors.create(name: "Laurence Fishbourne", character: "Morpheus")

    assert_equal "Keanu Reeves", m.actors.find(character: "Neo")
  end
end
