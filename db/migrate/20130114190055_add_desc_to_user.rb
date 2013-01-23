class AddDescToUser < ActiveRecord::Migration
   def up
  	add_column :users, :desc, :text
  end

  def down
  	remove_column :users, :desc
  end
end
