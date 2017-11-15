require 'minitest/pride'
require 'minitest/autorun'
require './lib/actor'
require './lib/movie'
require './lib/nominee'

class NomineeTest < Minitest::Test

  def test_It_exists
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee = Nominee.new(actress_1, movie_1)

    assert_instance_of Nominee, nominee
  end

  def test_has_an_actor
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee = Nominee.new(actress_1, movie_1)

    assert_instance_of Actor, nominee.actor
  end

  def test_has_a_movie
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee = Nominee.new(actress_1, movie_1)

    assert_instance_of Movie, nominee.movie
  end

  def test_for_new_instance_of_attributes
    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    assert_instance_of Actor, nominee_2.actor
    assert_equal "Brie Larson", nominee_2.actor.name
  end

  def test_for_new_instance_of_attributes
    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    assert_instance_of Movie, nominee_2.movie
    assert_equal "Room", nominee_2.movie.name
  end
end
