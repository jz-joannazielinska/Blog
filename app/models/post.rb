class Post < ApplicationRecord
  validates_presence_of :title, :content
  validates_uniqueness_of :title

  has_many :comments
end
