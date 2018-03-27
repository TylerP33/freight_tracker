class RemoveMultipleColumnsRoutes < ActiveRecord::Migration
  def change
  	remove_column :routes, :consignee_name, :string
  end
end
