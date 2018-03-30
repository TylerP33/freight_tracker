class LoadsController < ApplicationController

	get "/loads" do
		redirect_if_not_logged_in
		current_user
		@carrier = Carrier.find(current_user.id)
		@routes = Route.all
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
		redirect "/loads/#{@load.id}/edit"
	else
		@load.carrier_id == current_user.id
		@load.update(pallet_count: params[:pallet_count], weight: params[:weight], description: params[:description], haz_mat: params[:haz_mat])
		redirect "/loads/#{@load.id}"
	end
  end

  	delete '/loads/:id/delete' do
  		redirect_if_not_logged_in
  		@load = Load.find params['id']
  		if @load.carrier_id == current_user.id
  			@load.destroy
  			redirect '/loads'
  		else
  			redirect '/loads/new?error=Only the carrier can do this!'
  		end
  	end
end

