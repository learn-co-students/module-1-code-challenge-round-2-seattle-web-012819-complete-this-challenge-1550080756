require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

v1 = Viewer.new("JasonB")
v2 = Viewer.new("MadelineD")

m1 = Movie.new("Titanic", 5)
m2 = Movie.new("Superbad", 4)

q1 = QueueItem.new(v1, m1)
q2 = QueueItem.new(v2, m2)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
