class Comment < ActiveRecord::Base
  attr_accessible :alias, :message, :post_id
  belongs_to :post
  validates_presence_of :alias, :message, :post_id
end
