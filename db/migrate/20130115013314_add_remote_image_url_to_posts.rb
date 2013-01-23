class AddRemoteImageUrlToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :remote_image_url, :string
  end

  def down
    remove_column :posts, :remote_image_url
  end
end
