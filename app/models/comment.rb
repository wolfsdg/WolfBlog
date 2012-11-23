class Comment < ActiveRecord::Base
  attr_accessible :alias, :message, :post_id
  belongs_to :post
  has_many :likes
  validates_presence_of :alias, :message, :post_id
end