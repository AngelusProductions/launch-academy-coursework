class Comment < ActiveRecord::Base
  validates :body, length: { maximum: 140}

  belongs_to :recipe
end
