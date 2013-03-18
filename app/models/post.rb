class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, :through => :posts_tags

  # has_and_belongs_to_many :tags # this would also work, right (since we're not storing any data in the join table)
end
