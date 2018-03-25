class CreateLoadRoutes < ActiveRecord::Migration
  def change
  	create_table :load_routes do |t|
  		t.integer :load_id
  		t.integer :route_id
  	end
  end
end
