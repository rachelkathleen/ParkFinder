require_relative '../../config/environment'

class UserController < ApplicationController
  get '/users' do
      erb :'user_views/users'
  end

  get '/signup' do #new
    erb :'user_views/signup'
  end

  post "/signup" do
    if params[:user_name] == "" || params[:password] == "" || params[:email] == ""
      redirect '/failure'
    else
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect "/user_page"
    end
  end

  get '/been_to' do
    erb :'user_views/been_to'
  end

  post '/been_to' do
    redirect '/user_page'
  end

  get '/login' do
    erb :'user_views/login'
  end

  post "/login" do
    user = User.find_by(:user_name => params[:user_name])
    session[:user_id] = user.id
    if user && user.authenticate(params[:password])
      redirect "/user_page"
    else
      redirect "/failure"
    end
  end

  get '/failure' do
    erb :'user_views/failure'
  end


  get '/user_page' do
    @user = current_user
    erb :'user_views/user_page'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'user_views/show'
  end

  get '/users/:id/edit' do
    @user = current_user
    erb :'user_views/edit'
  end

  patch '/users/:id' do
    #condition for page being patched belongs to current_user
    @user = current_user
    if @user.update(user_name: params[:user_name], email: params[:email], password: params[:password])
        redirect "/user_page"
    else
        erb :'user_views/edit'
    end
  end

  delete '/users/:id' do
    @user = current_user
    session.clear
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
end
