class AddHasManyId < ActiveRecord::Migration
  def change
  	add_column :loads, :carrier_id, :integer
  	add_column :routes, :load_id, :integer
  end
end
