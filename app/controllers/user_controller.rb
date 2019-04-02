require_relative '../../config/environment'

class UserController < ApplicationController
use Rack::Flash

  get '/users' do
      erb :'user_views/users'
  end

  get '/signup' do #new
    erb :'user_views/signup'
  end

  post "/signup" do
      @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id
      redirect "/user_page"
    else
      flash.now[:error]=@user.errors.full_messages
      erb :'user_views/signup'
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
    # binding.pry
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/user_page"
    else
      flash.now[:error]="Your username or password do not match"
      erb :'user_views/login'
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
    @user = current_user
    if @user.update(user_name: params[:user_name], email: params[:email], password: params[:password])
      flash.now[:success]="Your profile has been editted"
        redirect "/user_page"
    else
        erb :'user_views/edit'
    end
  end

  delete '/users/:id' do
    @user = current_user
    session.clear

    UserPark.all.each do |up|
      if up.user_id == @user.id
        up.destroy
      end
    end

    Note.all.each do |note|
      if note.user_id == @user.id
        up.destroy
      end
    end

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
