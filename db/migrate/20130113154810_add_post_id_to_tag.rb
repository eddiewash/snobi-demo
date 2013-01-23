class AddPostIdToTag < ActiveRecord::Migration
  # def change
  # 	add_column :tag, :post_id, :integer
  # end

  def up
  	add_column :tags, :post_id, :integer
  end

  def down
  	remove_column :tags, :post_id, :integer
  end
end
