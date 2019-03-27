require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session
    set :session_secret, 'parks'
  end

  get "/" do
    erb :homepage
  end
  # 
  # helpers do
  #   def logged_in?
  #     !!session[:user_id]
  #   end
  #
  #   def current_user
  #     User.find(session[:user_id])
  #   end
  # end
end
