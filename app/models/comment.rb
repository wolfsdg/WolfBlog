class Comment < ActiveRecord::Base
  attr_accessible :alias, :message, :post_id
  belongs_to :post
end
