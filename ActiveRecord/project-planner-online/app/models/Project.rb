class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :tasks
  
  has_many :pursuits
  has_many :users, through: :pursuits
end
