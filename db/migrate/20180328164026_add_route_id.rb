class AddRouteId < ActiveRecord::Migration
  def change
  	add_column :loads, :route_id, :integer
  end
end
