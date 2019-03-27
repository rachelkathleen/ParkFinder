require_relative '../../config/environment'

class UserController < ApplicationController


  get '/login' do
    erb :'user_views/login'
  end

  post "/login" do
    user = User.find_by(:username => params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/parks"  #need to change to user homepage
    else
      redirect "/failure"
    end
  end

  get '/signup' do
    erb :'user_views/signup'
  end

  post "/signup" do
    user = User.new(params)
    binding.pry
    if user.save
      redirect "user_views/login"
    else
      redirect "user_views/failure"
    end
  end

  get '/users' do
    #display all users
  end

  get '/users/new' do
    #create a new user - made 'signup' instead
  end

  post '/users' do
    #Creates a user in DB, and then typically redirects
  end

  get '/users/:id' do
    #Show info about specific user
  end

  get '/users/:id/edit' do
    #show form to edit a specific user
  end

  patch '/users/:id' do
    #edit user in DB the redirects
  end

  delete '/users/:id' do
    #deletes a user in the DB then redirects
  end
end
