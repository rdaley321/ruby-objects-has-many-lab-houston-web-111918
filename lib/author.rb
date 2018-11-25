class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    new = Post.new(title)
    self.posts << new
    new.author = self
  end
  
end