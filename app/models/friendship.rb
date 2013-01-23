class Friendship < ActiveRecord::Base
  attr_accessible :user_id, :follower_id

  belongs_to :follower, class_name: 'User'
  belongs_to :user, class_name: "User"

  validates :follower_id, presence: true
  validates :user_id, presence: true
end
