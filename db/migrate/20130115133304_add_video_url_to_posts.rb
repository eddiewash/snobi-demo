class AddVideoUrlToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :video_url, :string
  end

  def down
    remove_column :posts, :video_url
  end
end
