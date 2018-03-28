class RoutesController < ApplicationController

	get "/routes" do
		redirect_if_not_logged_in
		erb :"/routes/new"
	end

	post "/routes" do
		redirect_if_not_logged_in
		if params[:pickup_location].empty? || params[:destination].empty? || params[:pickup_date].empty? || params[:delivery_date].empty?
			redirect '/routes/new?error=You must fill in all the blanks'
		else
			@route = current_user.routes.create(pickup_location: params[:pickup_location], destination: params[:destination], pickup_date: params[:pickup_date], delivery_date: params[:delivery_date])
			@route
			redirect '/loads'
		end
	end

	get '/routes/:id' do
		redirect_if_not_logged_in
		@route = Route.find params['id']
	erb :'/routes/show_route'
	end

	get '/routes/:id/edit' do
		redirect_if_not_logged_in
		@route = Route.find params['id']
		erb :'/routes/edit'
	end 

	patch '/routes/:id' do
		redirect_if_not_logged_in
		@route = Route.find params['id']
	if 	params[:pickup_location].empty? || params[:destination].empty? || params[:pickup_date].empty? || params[:delivery_date].empty?
		redirect "/routes/#{@route.id}/edit"
	else
		@route.update(pickup_location: params[:pickup_location], destination: params[:destination], pickup_date: params[:pickup_date], delivery_date: params[:delivery_date])
		redirect "/routes/#{@route.id}"
	end
  end

  	delete '/routes/:id/delete' do
  		redirect_if_not_logged_in
  		@route = Route.find params['id']
  		if @route.carrier_id == current_user.id
  			@route.destroy
  			redirect '/loads'
  		else
  			redirect '/loads/new?error=Only the carrier can do this!'
  		end
  	end
