class EditCarriersName < ActiveRecord::Migration
  def change
  	remove_column :carriers, :carrier_name, :string
  end
end
