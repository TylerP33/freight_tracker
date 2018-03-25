class DroDeliveriesTable < ActiveRecord::Migration
  def change
  	drop_table :deliveries
  end
end
