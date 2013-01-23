class AddUserIdToPost < ActiveRecord::Migration
  # def change
  # end

  def up
  	add_column :posts, :user_id, :integer
  end

  def down
  	remove_column :posts, :user_id, :integer
  end
end
