class AddColumnCarrierId < ActiveRecord::Migration
  def change
  	add_column :loads, :carrier_id, :integer
  end
end
