class CreateRoutes < ActiveRecord::Migration
  def change
  	create_table :routes do |t|
  		t.string :pickup_location
  		t.string :destination
  		t.string :consignee_name
  		t.text :pickup_date
  		t.text :delivery_date
  	end
  end
end
