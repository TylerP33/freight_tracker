class AddColumnRoutesLoadId < ActiveRecord::Migration
  def change
  	add_column :routes, :load_id, :integer
  end
end
