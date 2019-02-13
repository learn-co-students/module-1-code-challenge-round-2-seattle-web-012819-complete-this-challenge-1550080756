class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    # self.class.all << self
  end

  def queue_items
    results = []
    QueueItem.all.each do |inst_qi|
      if inst_qi.movie == self
        results << inst_qi
      end
    end
    results
  end
  # returns an array of all of the Viewers with this Movie instance in their queue
  def viewers
    results = []
    self.queue_items.each do |inst_qi|
        results << inst_qi.viewer
    end
    results
  end

  # returns the average of all ratings for this instance of Movie
  def average_rating
    results = []
    self.queue_items.each do |inst_qi|
        results << inst_qi.rating
    end
    results.inject(:+)/results.count
  end

  # returns the instance of Movie with the highest average rating
  def self.highest_rated
    self.all.max {|a, b| a.average_rating <=> b.average_rating}
  end

  def self.all
    @@all
  end

end
