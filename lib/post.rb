require 'pry'
class Post
  attr_accessor :author, :title, :name
  @@all = []
def  initialize(name_str)
  @name = name_str
  @@all << self
end

def self.all
 @@all
 end

 def title
   @name
 end

 def author_name
   if author
     self.author.name
   else
     nil
 end
 end
end
