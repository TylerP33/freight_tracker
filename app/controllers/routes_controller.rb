class RoutesController < ApplicationController

	get "/routes/new" do
		redirect_if_not_logged_in
		erb :"/routes/new"
	end

	get '/routes/:id/edit' do
		redirect_if_not_logged_in
		@route = Route.find(params[:id])
		erb :'/routes/edit'
	end 

	delete '/routes/:id/delete' do
  		redirect_if_not_logged_in
  		@route = Route.find(params[:id])
  		if @route.carrier == current_user
  			@route.destroy
  			redirect '/loads'
  		else
  			redirect '/routes/new?error=You are not the carrier of this load!'
  		end
  	end

  	patch '/routes/:id' do
		redirect_if_not_logged_in
		@route = Route.find(params[:id])
	if 	params[:pickup_location].empty? || params[:destination].empty? || params[:pickup_date].empty? || params[:delivery_date].empty?
		redirect "/routes/#{@route.id}/edit"
	else
		@route.carrier == current_user
		@route.update(pickup_location: params[:pickup_location], destination: params[:destination], pickup_date: params[:pickup_date], delivery_date: params[:delivery_date])
		redirect "/loads"
	end
  end

  	get '/routes/:id' do
		redirect_if_not_logged_in
		current_user
		@route = Route.find(params[:id])
		erb :'/routes/show_route'
	end

  	post "/routes" do
		redirect_if_not_logged_in
		if params[:pickup_location].empty? || params[:destination].empty? || params[:pickup_date].empty? || params[:delivery_date].empty?
			redirect '/routes/new?error=You must fill in all the blanks'
		else
			@route = current_user.routes.create(params)
			redirect '/loads'
		end
	end
 end
