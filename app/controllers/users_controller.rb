class UsersController < ApplicationController

	get '/signup' do
        if !logged_in?
            erb :"users/signup"
        else
            redirect "/freight"
        end
    end
	
	post '/signup' do
		if params[:username].empty? || params[:email].empty? || params[:password].empty?
			redirect "/signup"
		else 
			@user = User.create(username: params[:username], email: params[:email], password: params[:password])
     		session[:user_id] = @user.id
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
    	@user = User.find_by(username: params[:username])
    	if @user && @user.authenticate(params[:password])
      		session[:user_id] = @user.id
      		redirect '/freight'
    	else
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