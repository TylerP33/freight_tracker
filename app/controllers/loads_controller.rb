class LoadsController < ApplicationController

	get "/loads" do
		redirect_if_not_logged_in
		current_user
		@carrier = Carrier.find(current_user.id)
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
			@load = current_user.loads.create(pallet_count: params[:pallet_count], weight: params[:weight], description: params[:description], haz_mat: params[:haz_mat])
			redirect '/loads'
		end
	end

	get '/loads/:id' do
		redirect_if_not_logged_in 
		current_user
		@load = Load.find params['id']
		erb :"/loads/show_load"
	end

	get '/loads/:id/edit' do
		redirect_if_not_logged_in
		@load = Load.find params['id']
		erb :'/loads/edit'
	end 

	patch '/loads/:id' do
		redirect_if_not_logged_in
		@load = Load.find params['id']
	if 	params[:pallet_count].empty? || params[:weight].empty? || params[:description].empty?
		params[:haz_mat].nil? ? false : true
		redirect "/loads/#{@load.id}/edit?error=You must fill in all the blanks!"
	elsif @load.carrier != current_user
		  redirect '/loads/new?error=You are not the carrier of this load!'
	else
		@load.carrier == current_user
		@load.update(pallet_count: params[:pallet_count], weight: params[:weight], description: params[:description], haz_mat: params[:haz_mat])
		redirect "/loads"
	end
  end

  	delete '/loads/:id/delete' do
  		redirect_if_not_logged_in
  		@load = Load.find params['id']
  		if @load.carrier == current_user
  			@load.destroy
  			redirect '/loads'
  		else
  			redirect '/loads/new?error=You are not the carrier of this load!'
  		end
  	end
end

