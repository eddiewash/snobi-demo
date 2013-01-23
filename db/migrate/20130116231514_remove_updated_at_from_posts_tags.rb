class RemoveUpdatedAtFromPostsTags < ActiveRecord::Migration
  def up
    remove_column :posts_tags, :updated_at
  end

  def down
    add_column :posts_tags, :updated_at, :datetime
  end
end
