class Tag < ActiveRecord::Base
  has_many :post_tags # defines a method tag.posts_tags
  has_many :posts, :through => :posts_tags # defines a method tag.posts
  # tag = Tag.find(1)
  # tag.posts_tags
  
  # has_and_belongs_to_many :posts # this would also work, right (since we're not storing any data in the join table)
end
