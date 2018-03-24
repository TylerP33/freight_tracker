class CreateCarriers < ActiveRecord::Migration
  def change
  	create_table :carriers do |t|
  		t.string :username
  		t.string :email
  		t.string :password_digest
  		t.string :carrier_name
  	end
  end
end
