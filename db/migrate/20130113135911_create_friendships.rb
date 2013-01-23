class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.string :user_id
      t.string :follower_id

      t.timestamps
    end
  end
end
