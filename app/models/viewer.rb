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
    QueueItem.all.select do |queue|
      queue.viewer == self
    end
  end

  def queue_movies
    self.queue_items.map do |queue|
      queue.movies
    end
  end

  def rate_movie(movie, rating)
    movie_title =self.queue_items.map do |queue_viewer|
      queue_viewer.movie.title
    end
    #binding.pry
    if !movie_title.include?(movie)
      QueueItem.new(movie, self, rating)
    else
      QueueItem.all.each do |queue_item|
        if queue_item.movie.title == movie
          queue_item.rating = rating
        end
      end
    end
  end
end
