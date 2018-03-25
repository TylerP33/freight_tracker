class CreateLoads < ActiveRecord::Migration
  def change
  	create_table :loads do |t|
  		t.integer :pallet_count
  		t.integer :weight
  		t.string :description
  		t.boolean :haz_mat
  	end
  end
end

