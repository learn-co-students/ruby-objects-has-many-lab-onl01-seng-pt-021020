# Author
#   #new
#     is initialized with a name (FAILED - 4)
#   #name
#     has an attr_accessor for name (FAILED - 5)
#   #posts
#     has many posts (FAILED - 6)
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 7)
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 8)
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors (FAILED - 9)
require "pry"
class Author 
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

    def posts
    Post.all.select { |post| post.author == self }
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << add_post(post)
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
