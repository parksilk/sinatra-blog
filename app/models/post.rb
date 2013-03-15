class Post < ActiveRecord::Base
  has_many :posts_tags # Remember to create a migration!
  has_many :tags, :through => :posts_tags
end
