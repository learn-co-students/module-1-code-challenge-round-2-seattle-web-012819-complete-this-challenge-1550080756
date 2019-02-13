require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# q1 = QueueItem.new()

v1 = Viewer.new("Jessica")
v2 = Viewer.new("Tiffany")
m1 = Movie.new("Dirty Dancing")

q = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v2, m1, 1)

puts "Queue_items"
puts v1.queue_items

puts "Queue_movies"
puts v1.queue_movies
4
puts "Rate Movie"
puts v1.rate_movie(m1,4)

puts "Avg Rating"
puts m1.average_rating 


puts "Highest Rated Movie"
puts Movie.highest_rated




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
