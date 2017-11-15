require 'minitest/pride'
require 'minitest/autorun'
require './lib/actor'
require './lib/movie'
require './lib/nominee'
require './lib/award_show'

class AwardShowTest < Minitest::Test

  def test_It_exists

    show = AwardShow.new(2015)

    assert_instance_of AwardShow, show
  end

  def test_it_has_a_year
    show = AwardShow.new(2015)

    assert_equal 2015, show.year
  end

  def test_has_nominees
    show = AwardShow.new(2015)

    assert_equal [], show.nominees
  end

  def test_can_add_nominees
    show = AwardShow.new(2015)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    assert_equal [nominee_1, nominee_2], show.nominees
  end

  def test_can_determine_nominated_movie
    show = AwardShow.new(2015)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    assert_equal [movie_1, movie_2], show.nominated_movie
  end

  def test_the_total_net_worth
    show = AwardShow.new(2017)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    assert_equal 120000000, show.nominees_total_net_worth
  end

  def test_can_determine_alpabetic_order_of_last_name
    show = AwardShow.new(2017)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    assert_equal ["Larson", "Lawrence"], show.nominees_alphabetical_last_names
  end
end
