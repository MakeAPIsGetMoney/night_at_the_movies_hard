require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
  test "director has many movies" do
    d = Director.create(name: "John Doe")
    d.movies << Movie.create(title: "The Matrix", year: "1999", runtime: "137 min")
    d.movies << Movie.create(title: "The Maritian", year: "2015", runtime: "145 min")

    assert_equal 2, d.movies.count
  end
end
