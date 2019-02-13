require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


v1 = Viewer.new("ben")
v2 = Viewer.new("kevin")
v3 = Viewer.new("sam")
v4 = Viewer.new("paul")

m1 = Movie.new("Toy Story")
m2 = Movie.new("Lion King")
m3 = Movie.new("Aladin")
# m4 = Movie.new("Jungle Book")

qi1 = QueueItem.new(v1, m2, 4)
qi2 = QueueItem.new(v2, m2, 2)
qi3 = QueueItem.new(v3, m3, 5)
qi4 = QueueItem.new(v4, m1, 3)
# qi5 = QueueItem.new(v4, m3)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
