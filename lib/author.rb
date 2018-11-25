class Author
  attr_accessor :name, :posts
  
  @@all_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    self.posts << post
    self.class.all_posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    new = Post.new(title)
    add_post(new)
  end
  
  def self.all_posts
    @@all_posts
  end
  
  def post_count
    all_posts.count
  end
  
end