class Comment < ApplicationRecord
  validates_presence_of :user_nickname, :content

  belongs_to :post
end
