require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "freight_should_be_kept_a_secret"
  end


  get '/' do 
    erb :home
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      @current_user ||= Carrier.find_by(id: session[:user_id]) if session[:user_id]
    end

  end

end