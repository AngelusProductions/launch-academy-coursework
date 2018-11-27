class Recipe < ActiveRecord::Base
  validates :title, uniqueness: true,
                    presence: true

  has_many :comments
end
