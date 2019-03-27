require_relative '../../config/environment'

class UserController < ApplicationController

  get '/signup' do #new
    erb :'user_views/signup'
  end

  post "/signup" do
    if params[:user_name] == "" || params[:password] == "" || params[:email] == ""
      redirect '/failure'
    else
      binding.pry
      User.create(params)
      redirect "/users"
    end
  end

  get '/login' do
    erb :'user_views/login'
  end

  post "/login" do
    user = User.find_by(:user_name => params[:user_name])
    session[:user_id] = user.id
    if user && user.authenticate(params[:password])
      binding.pry
      redirect "/user_page"
    else
      redirect "/failure"
    end
  end

  get '/failure' do
    erb :'user_views/failure'
  end

  get '/users' do
      erb :'user_views/users'
  end

  get '/user_page' do
    @user = User.find_by(session[:user_id])
    binding.pry
    erb :'user_views/user_page'
  end

  get '/users/new' do
    #create a new user - made 'signup' instead
  end

  post '/users' do
    #Creates a user in DB, and then typically redirects
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'user_views/show'
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])

    erb :'user_views/edit'
  end

  patch '/users/:id' do
    # @user = User.find(params[:id])
      @user = User.find_by(session[:user_id])
    if @user.update(user_name: params[:user_name], email: params[:email], password: params[:password])
        redirect "/users/#{@user.id}"
    else
        erb :'user_views/edit'
    end
  end

  delete '/users/:id' do
    # @user = User.find(params[:id])
    @user = current_user
    if @user.delete
      redirect '/'
    else
      redirect "/users/#{@user.id}"
    end
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by(session[:user_id])
    end
  end
end
