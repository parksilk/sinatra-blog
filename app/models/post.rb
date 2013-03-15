class Post < ActiveRecord::Base
  has_many :post_tags # Remember to create a migration!
  has_many :tags, :through => :post_tags
end
