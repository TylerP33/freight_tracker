class RemoveRouteIdLoads < ActiveRecord::Migration
  def change
  	remove_column :loads, :route_id, :integer
  end
end
