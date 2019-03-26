require_relative '../../config/environment'

class UserController < ApplicationController


  get '/login' do
    erb :'user_views/login'
  end

  get '/signup' do
    erb :'user_views/signup'
  end

end
