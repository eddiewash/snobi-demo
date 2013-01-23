class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :desc
      t.string :type

      t.timestamps
    end
  end
end
