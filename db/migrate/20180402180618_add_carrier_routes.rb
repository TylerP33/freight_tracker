class AddCarrierRoutes < ActiveRecord::Migration
  def change
  	add_column :routes, :carrier_id, :integer
  end
end
