class LoadsController < ApplicationController

	get "/loads" do
		redirect_if_not_logged_in
		@loads = Load.all
		@carrier = current_user 
		erb :"/loads/show"
	end

	get "/loads/new" do
		redirect_if_not_logged_in 
		erb :"/loads/new"
	end 

	post "/loads" do
		redirect_if_not_logged_in 
		if 	params[:pallet_count].empty? || params[:weight].empty? || params[:description].empty?
			params[:haz_mat].nil? ? false : true
			redirect '/loads/new?error=You must fill in all the blanks'
		else
			@new_load = Load.new(pallet_count: params[:pallet_count], weight: params[:weight], description: params[:description], haz_mat: params[:haz_mat])
			@new_load.save
			redirect '/loads'
		end
	end
end 


