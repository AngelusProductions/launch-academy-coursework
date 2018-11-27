class Invite < ActiveRecord::Base
  validates :party_id, presence: true
  validates :friend_id, presence: true

  belongs_to :party
  belongs_to :friend
end
