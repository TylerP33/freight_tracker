class AddLatlongRoutes < ActiveRecord::Migration
  def change
  	add_column :routes, :latitude, :float
  	add_column :routes, :longitude, :float
  end
end
