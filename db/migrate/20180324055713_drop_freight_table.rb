class DropFreightTable < ActiveRecord::Migration
  def change
  	drop_table :freight
  end
end
