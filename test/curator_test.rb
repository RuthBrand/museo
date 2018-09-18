require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'
require './lib/photograph'
require './lib/curator'
require 'pry'

class CuratorTest<Minitest::Test

  def test_it_exists
   curator = Curator.new
   assert_instance_of Curator, curator
  end

  def test_it_starts_with_no_artists_or_photos
    curator = Curator.new
    assert_equal [], curator.artists
    assert_equal [], curator.photographs
  end

  def test_i_can_add_photographs_to_my_collection
    curator = Curator.new
    photo_1_attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
    }

    photo_2_attributes = {
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
    }

    photo_1 = Photograph.new(photo_1_attributes)
    photo_2 = Photograph.new(photo_2_attributes)

    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)

    assert_equal [photo_1, photo_2], curator.photographs
  end

  #note - i chose to not write a test to get the first phograph object,
  #as that method call (curator.photographs.first) is a ruby method
  #when i call it, it returns the object, but i don't want to write
  #test for the already made ruby method

  def test_i_can_pull_attributes_out_of_the_photographs_in_my_array
    curator = Curator.new
    photo_1_attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
    }

    photo_2_attributes = {
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
    }

    photo_1 = Photograph.new(photo_1_attributes)
    photo_2 = Photograph.new(photo_2_attributes)

    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", curator.photographs.first.name
  end

  def test_i_can_add_artists_to_my_collection
    curator = Curator.new
    artist_1_attributes = {
      id: "1",
      name: "Henri Cartier-Bresson",
      born: "1908",
      died: "2004",
      country: "France"
    }

   artist_2_attributes = {
     id: "2",
     name: "Ansel Adams",
     born: "1902",
     died: "1984",
     country: "United States"
   }

   artist_1 = Artist.new(artist_1_attributes)
   artist_2 = Artist.new(artist_2_attributes)

   curator.add_artist(artist_1)
   curator.add_artist(artist_2)

   assert_equal [artist_1, artist_2], curator.artists
  end

  def test_i_can_pull_attributes_out_of_the_artists_in_my_collection
    curator = Curator.new
    artist_1_attributes = {
      id: "1",
      name: "Henri Cartier-Bresson",
      born: "1908",
      died: "2004",
      country: "France"
    }

   artist_2_attributes = {
     id: "2",
     name: "Ansel Adams",
     born: "1902",
     died: "1984",
     country: "United States"
   }

   artist_1 = Artist.new(artist_1_attributes)
   artist_2 = Artist.new(artist_2_attributes)

   curator.add_artist(artist_1)
   curator.add_artist(artist_2)

   assert_equal "Henri Cartier-Bresson", curator.artists.first.name
  end

end
