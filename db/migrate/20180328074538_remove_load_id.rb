class RemoveLoadId < ActiveRecord::Migration
  def change
  	remove_column :routes, :load_id, :integer
  end
end
