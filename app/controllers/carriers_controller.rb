require 'rack-flash'

class CarriersController < ApplicationController
  use Rack::Flash

	get '/signup' do
        if !logged_in?
            erb :"carriers/signup"
        else
            redirect "/loads"
        end
    end
	
	post '/signup' do
		if params[:username].empty? || params[:email].empty? || params[:password].empty?
      flash[:message] = "Make sure to fill every field with the appropriate information"
			redirect "/signup"
	 elsif 
			@carrier = Carrier.create(username: params[:username], email: params[:email], password: params[:password])
     		session[:user_id] = @carrier.id
        flash[:message] = "Signup was successful"
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
          flash[:message] = "Login was successful"
      		redirect '/loads'
    	else
        flash[:message] = "Login Error:  Please enter your username and password again"
      		redirect '/login'
    	end
	end

  	get '/logout' do
    	if !logged_in?
      		redirect '/login'
    	else
      		session.clear
      		redirect '/'
   	 end
  end
end