require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movie
m1 = Movie.new("Bean Trees")
m2 = Movie.new("Aladdin")
m3 = Movie.new("Jumangi")

# Viewer
v1 = Viewer.new("Ellen")
v2 = Viewer.new("Jim")

# QueueItem
qi1 = QueueItem.new(v1, m3, 5)
qi2 = QueueItem.new(v2, m1, 2)
qi3 = QueueItem.new(v2, m3, 1)
qi4 = QueueItem.new(v2, m2, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
