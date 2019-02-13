class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|x| x.movie == self}
  end

  def viewers
    queue_items.collect{|x| x.viewer.username}
  end

  def average_rating
    total_rating = queue_items.collect{|x| x.rating}
    total_rating.inject(:+).to_f/total_rating.length
  end

  def self.highest_rated
    self.all.sort_by{|x| x.average_rating}.reverse[0]
  end
end
