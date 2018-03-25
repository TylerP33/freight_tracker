class LoadsController < ApplicationController

	get "/loads" do
		@loads = Load.all 
		erb :"/loads/show"
	end 


end 