class RemoveCreatedAtFromPostsTags < ActiveRecord::Migration
  def up
    remove_column :posts_tags, :created_at
  end

  def down
    add_column :posts_tags, :created_at, :datetime
  end
end
