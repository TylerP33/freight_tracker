class CarriersController < ApplicationController

	get '/signup' do
        erb :"carriers/signup"
  end
	
	post '/signup' do
		if params[:username].empty? || params[:email].empty? || params[:password].empty?
			redirect "/signup"
	 elsif 
			@carrier = Carrier.create(username: params[:username], email: params[:email], password: params[:password])
     	session[:user_id] = @carrier.id
			redirect "/loads"
		end
 	end

  get '/login' do
    	if !logged_in?
      	 	erb :"/carriers/login"
      else
          redirect '/loads'
    	end
	end

    post '/login' do
    	@carrier = Carrier.find_by(username: params[:username])
    	if @carrier && @carrier.authenticate(params[:password])
      		session[:user_id] = @carrier.id
      		redirect '/loads'
    	else
      		redirect '/login'
    	end
	end

  	get '/logout' do
    	if !logged_in?
      		redirect '/login?error="You were not logged in!'
    	else
      		session.clear
      		redirect '/'
   	 end
  end
end