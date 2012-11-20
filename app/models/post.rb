class Post < ActiveRecord::Base

  attr_accessible :content, :title, :user_id
  belongs_to :user
  has_many :comments

  validates_presence_of :content, :title, :user_id
end
