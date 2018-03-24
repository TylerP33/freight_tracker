class CreateFreight < ActiveRecord::Migration
  def change
  	create_table :freight do |t|
  		t.string :consignee
  		t.integer :pallet_count
  		t.integer :load_weight
  		t.integer :pickup_date
  		t.integer :delivery_date
  		t.string :pickup_location
  		t.string :delivery_location
  		t.integer :carrier_id
  	end
  end
end
