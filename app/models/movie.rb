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
    QueueItem.all.select do |item|
      item.movie == self 
    end 
  end 

  def viewers 
    queue_items.map do |movieq|
      movieq.viewer
    end 
  end 

  def average_rating 
    count = 0 
    total = 0
    queue_items.each do |item|
      count +=1
      total += item.rating
    end 
    avg = total/count 
  end 

  def self.highest_rated 
    highest = []
    @@all.select do |movie| 
      highest << movie.average_rating
      binding.pry 
    end 
    highest
  end 

end # End Movie Class
