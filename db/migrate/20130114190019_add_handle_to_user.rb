class AddHandleToUser < ActiveRecord::Migration
  def up
  	add_column :users, :handle, :string
  end

  def down
  	remove_column :users, :handle
  end
end
