class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :pursuits
  has_many :projects, through: :pursuits
end
