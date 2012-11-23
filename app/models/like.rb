class Like < ActiveRecord::Base
  attr_accessible :comment_id, :user_id
  validates_presence_of :comment_id, :user_id
  belongs_to :user
  belongs_to :comment
end
