require 'rack-flash'

class CarriersController < ApplicationController
  use Rack::Flash

	get '/signup' do
        if !logged_in?
            erb :"users/signup"
        else
            redirect "/loads"
        end
    end
	
	post '/signup' do
		if params[:username].empty? || params[:email].empty? || params[:password].empty?
      flash[:message] = "Make sure to fill every field with the appropriate information"
			redirect "/signup"
			
		else 
			@carrier = Carrier.create(username: params[:username], email: params[:email], password: params[:password])
     		session[:user_id] = @carrier.id
        flash[:message] = "Signup was successful"
			redirect "/freight"
		end
 	end

 	get '/login' do
    	if logged_in?
       		redirect '/freight'
    	else
      	 	erb :"/users/login"
    	end
	end

    post '/login' do
    	@carrier = Carrier.find_by(username: params[:username])
    	if @carrier && @carrier.authenticate(params[:password])
      		session[:user_id] = @carrier.id
          flash[:message] = "Login was successful"
      		redirect '/freight'
    	else
        flash[:message] = "Login Error:  Please enter our username and password again"
      		redirect '/login'
    	end
	end

  	get '/logout' do
    	if !logged_in?
      		redirect '/login'
    	else
      		session.clear
      		redirect '/login'
   	 end
  end
end