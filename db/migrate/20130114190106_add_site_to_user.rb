class AddSiteToUser < ActiveRecord::Migration
  def up
  	add_column :users, :site, :string
  end

  def down
  	remove_column :users, :site
  end
end
