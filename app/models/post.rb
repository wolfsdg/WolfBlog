class Post < ActiveRecord::Base

  attr_accessible :content, :title, :user_id, :picture

  has_attached_file :picture, :styles => { :medium => "400x400", :thumb => "100x100>" }

  belongs_to :user
  has_many :comments

  validates_presence_of :content, :title, :user_id
end
