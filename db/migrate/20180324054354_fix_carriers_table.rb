class FixCarriersTable < ActiveRecord::Migration
  def change
  	add_column :carriers, :username, :string
  	add_column :carriers, :company_name, :string
  end
end
