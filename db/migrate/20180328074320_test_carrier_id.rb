class TestCarrierId < ActiveRecord::Migration
  def change
  	remove_column :loads, :carrier_id, :integer
  end
end
