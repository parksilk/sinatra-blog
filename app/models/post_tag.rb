class PostTag < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :tag   # defines a method post_tag.tag
  belongs_to :post  # defines a method post_tag.post
end
