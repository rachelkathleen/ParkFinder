require_relative '../../config/environment'

class UserController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views/user_views'
  end

  get '/login' do
    erb :login
  end

  get '/signup' do
    erb :login
  end

end
