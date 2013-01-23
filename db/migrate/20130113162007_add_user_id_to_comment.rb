class AddUserIdToComment < ActiveRecord::Migration
  # def change
  # 	add_column :comments, :user_id, :integer
  # end

  def up
  	add_column :comments, :user_id, :integer
  end

  def down
  	remove_column :comments, :user_id, :integer
  end
end
