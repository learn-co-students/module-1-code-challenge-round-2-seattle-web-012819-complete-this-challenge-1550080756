class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    self.queue_items.map do |queue|
      queue.viewer
    end
  end

  def average_rating
    total_rating = 0
    count_rating = 0
    self.queue_items.each do |movie|
      total_rating += movie.rating
      count_rating += 1
    end
    total_rating / count_rating.to_f
  end

  def self.highest_rated
    highest_ave_rating =0
    highest_rated_movie = ""
    QueueItem.all.each do |queue_items|
      if queue_items.movie.average_rating > highest_ave_rating
        highest_ave_rating = queue_items.movie.average_rating
        highest_rated_movie = queue_items.movie
      end
    end
    highest_rated_movie
  end
end #end of class
