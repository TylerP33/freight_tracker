class DropTableLoadRoutes < ActiveRecord::Migration
   def change
  	drop_table :load_routes
  end
end