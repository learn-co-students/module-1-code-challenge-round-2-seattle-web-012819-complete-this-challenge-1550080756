require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Django")
m2 = Movie.new("Titanic")
m3 = Movie.new("Goodfellas")
m4 = Movie.new("ET")

v1 = Viewer.new("aaa111")
v2 = Viewer.new("bbb222")
v3 = Viewer.new("ccc333")
v4 = Viewer.new("ddd444")

q1 = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v1, m2)
q3 = QueueItem.new(v4, m1, 4)
q4 = QueueItem.new(v2, m4, 1)
q5 = QueueItem.new(v2, m3, 2)
q6 = QueueItem.new(v3, m1, 1)
q7 = QueueItem.new(v3, m4, 3)
q8 = QueueItem.new(v3, m3, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
