class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items 
    QueueItem.all.select do |item|
      item.viewer == self 
    end 
  end 

  def queue_movies 
    queue_items.map do |items|
      items.movie
    end 
  end 


  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end 


  def rate_movie(movie, rating)
    found = queue_items.find do |qitem|
        movie == qitem.movie
    end 
    if found == nil 
        QueueItem.new(self, movie, rating)
    else 
        found.rating = rating 
    end 
  end 



  
end #End Viewer class 
