require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("StarWars")
m2 = Movie.new("Ironman")
m3 = Movie.new("Spiderman")

v1 = Viewer.new("Rob007")
v2 = Viewer.new("Mike008")
v3 = Viewer.new("Galaxy009")

q1 = QueueItem.new(m1, v2, 4.0)
q2 = QueueItem.new(m2, v1, 3.0)
q3 = QueueItem.new(m1, v3, 5.0)
q4 = QueueItem.new(m3, v1, 4.0)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
