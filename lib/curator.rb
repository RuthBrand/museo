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
   photos = @photographs.find_all do |photo|
    photo.artist_id == artist.id
   end
   # artists_with_more_than_one = []
   # photos.length > 1
   # artists_with_more_than_one << photos.
  end

  # def artists_with_multiple_photographs
  #  if find_photograph_by_artist(artist).length > 1
  #
  # end


  # artists = {}
  # @photographs.each do |photo|
  #   binding.pry
  #   artists[photo.artist_id] = @artists.id
  # end
  # artists
  #each time an artist id
  #
  # def account_summary
  #   summary = {}
  #   @accounts.each do |account|
  #     summary[account.account_number] = account.balance
  #   end
  #   summary
  # end

  # def return_each_artists_attributes(artist)
  #   hash = {}
  #   find_photographs_by_artist(artist)
  #   hash[artist_id] = artist.artist_id
  #   hash[id] = artist.id
  #   hash[name] = artist.name
  #   hash[year] = artist.year
  #   hash
  # end

  def photographs_taken_by_artists_from(location)
    artist_ids = @artists.map do |artist|
      artist.id
    end
  find_photograph_by_id(artist_ids)
  end
  #   photos = []
  #
  #   #ok so here, i have to find each artist by id
  #   #and see where they are from
  #
  # end


end
