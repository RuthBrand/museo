class Curator

  attr_reader :artists,
              :photographs

  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(artist_id)
    @artists.find do |artist|
      artist.id == artist_id
    end
  end

  def find_photograph_by_id(photo_id)
    @photographs.find do |photo|
      photo.id == photo_id
    end
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photo|
    photo.artist_id == artist.id
   end
  end

  def artists_with_multiple_photographs
    ids = @photographs.map do |photo|
      photo.artist_id
    end

    first_artist = find_artist_by_id(ids.first)
    second_artist = find_artist_by_id(ids[1])
    third_artist = find_artist_by_id(ids.last)

    first_artists_photos = find_photographs_by_artist(first_artist)
    second_artists_photos = find_photographs_by_artist(second_artist)
    third_artists_photos = find_photographs_by_artist(third_artist)

    count_of_first_artist = first_artists_photos.length
    count_of_second_artist = second_artists_photos.length
    count_of_third_artist = third_artists_photos.length
    artists_greater_than_one = []
    if count_of_first_artist > 1
      artists_greater_than_one << first_artist
    end

    if count_of_second_artist > 1
      artists_greater_than_one << second_artist
    end

    if count_of_third_artist > 1
      artists_greater_than_one << third_artist
    end

    artists_greater_than_one
  end






end
