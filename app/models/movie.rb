class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :writers
  # has_many :actors, -> { select('actors.*, actor_movies.character') }, through: :actor_movies
end
