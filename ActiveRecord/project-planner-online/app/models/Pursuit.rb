class Pursuit < ActiveRecord::Base
  validates :user_id, presence: true,
                      numericality: { greater_than: 0 }

  validates :project_id, presence: true,
                         numericality: { greater_than: 0 }

  belongs_to :user
  belongs_to :project
end
