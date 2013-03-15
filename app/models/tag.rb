class Tag < ActiveRecord::Base
  has_many :posts_tags # defines a method tag.posts_tags
  has_many :posts, :through => :posts_tags # defines a method tag.posts
  # tag = Tag.find(1)
  # tag.posts_tags
  # Remember to create a migration!
end
