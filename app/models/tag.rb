class Tag < ActiveRecord::Base
  has_many :post_tags # defines a method tag.post_tags
  has_many :posts, :through => :post_tags # defines a method tag.posts
  # tag = Tag.find(1)
  # tag.post_tags
  # Remember to create a migration!
end
