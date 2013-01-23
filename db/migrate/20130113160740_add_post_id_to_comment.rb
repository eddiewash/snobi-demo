class AddPostIdToComment < ActiveRecord::Migration
  # def change
  # 	add_column :comments, :post_id, :integer
  # end

  def up
  	add_column :comments, :post_id, :integer
  end

  def down
  	remove_column :comments, :post_id
  end
end
