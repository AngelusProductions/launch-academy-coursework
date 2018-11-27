class Party < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true

  has_many :invites
  has_many :friends, through: :invites
end
