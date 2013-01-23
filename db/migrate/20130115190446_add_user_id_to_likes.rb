class AddUserIdToLikes < ActiveRecord::Migration
  def up
    add_column :likes, :user_id, :integer
  end

  def down
    remove_column :likes, :user_id
  end
end
