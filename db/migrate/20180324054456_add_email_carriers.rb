class AddEmailCarriers < ActiveRecord::Migration
  def change
  	add_column :carriers, :email, :string
  end
end
