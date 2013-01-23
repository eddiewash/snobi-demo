class RenameTypeColumnToKind < ActiveRecord::Migration
  def up
  	add_column :posts, :type, :post_type
  end

  def down
  	rename_column :posts, :post_type, :type
  end
end
