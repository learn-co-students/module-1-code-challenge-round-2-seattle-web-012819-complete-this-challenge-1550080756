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
    QueueItem.all.select{|x| x.movie == self}
  end

  def viewers
    self.queue_items.map{|x| x.viewer}
  end

  def average_rating
    queue_items.map{|x| x.rating}.inject(:+) / queue_items.count

  end

  def self.highest_rated
    high_rating = 0
      all.each do |x|
        binding.pry
      if  x.average_rating > high_rating
        high_rating = x.average_rating
      end
    end
    high_rating
  end

end
