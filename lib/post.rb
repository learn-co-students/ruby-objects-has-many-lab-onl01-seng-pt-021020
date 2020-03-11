# Post
#   #new
#     is initialized with an argument of a title (FAILED - 10)
#     pushes new instances into a class variable called @@all upon initialization(FAILED - 11)
#   @@all
#     is a class variable set to an array (FAILED - 12)
#   .all
#     is a class method that returns an array of all post instances that have been created (FAILED - 13)
#   #title
#     has a title (FAILED - 14)
#   #author
#     belongs to an author (FAILED - 15)
#   #author_name
#     knows the name of its author (FAILED - 16)
#     returns nil if the post does not have an author (FAILED - 17)

class Post 
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.all
    @@all 
    
  end
  
  def author_name
    if @author == nil
      return nil 
    else 
      self.author.name 
    end
  end
end