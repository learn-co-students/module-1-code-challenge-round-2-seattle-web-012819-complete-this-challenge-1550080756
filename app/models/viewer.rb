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

  def viewer_queue_items
    QueueItem.all.select do |x|
      x.viewer == self
    end
  end

  def queue_movies
    viewer_queue_items.collect do |x|
      x.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating) #(m1, 5)
    if !queue_movies.include?(movie)
      QueueItem.new(self, movie, rating)
    else
      puts "QueueItem already there"
      found_movie = queue_movies.find do |x|
        x.title == movie
      end
      found_movie.rating = rating #got an error here. trying to assign new rating but NoMethodError
    end
  end
end
