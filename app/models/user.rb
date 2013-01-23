class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy

	has_many :friendships, foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_friendships, foreign_key: "user_id", class_name: "Friendship", dependent: :destroy
	has_many :friends, through: :friendships, source: :user_id

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :location, :handle, :desc, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


  def feed
  end

  def following?(other_user)
    friendships.find_by_user_id(other_user.id)
  end

  def follow!(other_user)
    user_id = current_user
    other_user = post.user.id
    friendships.create!(user_id: other_user.id)
  end

  def unfollow!(other_user)
    friendships.find_by_user_id(other_user.id).destroy
  end
end
