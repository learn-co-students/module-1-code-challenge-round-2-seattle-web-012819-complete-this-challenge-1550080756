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
    QueueItem.all.select{|x| x.viewer == self}
  end

  def queue_movies
    queue_items.collect{|x|x.movie}
  end


  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    v_and_m = QueueItem.all.find{|x|x.viewer == self && x.movie == movie}
    if v_and_m
      v_and_m.rating = rating
    else
      QueueItem.new(self, movie, rating)
    end
  end
end
