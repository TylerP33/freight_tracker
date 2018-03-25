class LoadsController < ApplicationController

	get "/loads" do
		@loads = Load.all 
		erb :"/loads/show"
	end

	get "loads/new" do
		erb :"/loads/new"
	end 


end 


