require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "move has many actors" do
  #   m = Movie.create(title: "The Matrix", year: "1999", runtime: "137 min")
  #   m.actors << Actor.create(name: "Keanu Reeves")
  #   m.actors << Actor.create(name: "Laurence Fishbourne")
  #
  #   assert_equal 2, m.actors.count
  # end

  test "movie has many directors" do
    m = Movie.create(title: "The Matrix", year: "1999", runtime: "137 min")
    m.directors << Director.create(name: "John Doe")
    m.directors << Director.create(name: "Other Doe")

    assert_equal 2, m.directors.count
  end

  test "movie has many writers" do
    m = Movie.create(title: "The Matrix", year: "1999", runtime: "137 min")
    m.writers << Writer.create(name: "Jane Doe")
    m.writers << Writer.create(name: "John Smith")

    assert_equal 2, m.writers.count
  end
end
