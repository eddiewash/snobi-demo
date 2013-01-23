class AddPostIdToLikes < ActiveRecord::Migration
  def up
    add_column :likes, :post_id, :integer
  end

  def down
    remove_column :likes, :post_id
  end
end
