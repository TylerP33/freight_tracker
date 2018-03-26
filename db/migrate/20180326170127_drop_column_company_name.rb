class DropColumnCompanyName < ActiveRecord::Migration
  def change
  	remove_column :carriers, :company_name, :string
  end
end
