class AddSnobsTable < ActiveRecord::Migration
  def change
  	create_table :snobs do |t|
  		t.string :name
  		t.timestamps
  	end
  end
end
