class QueueItem
  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
