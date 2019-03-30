class UserParksController < ApplicationController

  get '/parks/user_parks/new' do
    erb :'user_parks/new'
  end

  post '/parks/user_parks/new' do
    @userpark = UserPark.new(params)
    if @userpark.save
        redirect "/user_page"
    else
        erb :failure
    end
  end

  get "/parks/user_parks/:id/edit" do
    "hello world"
  end

  patch "/parks/user_parks/:id" do
    redirect '/user_page'
  end

  # DELETE: /user_parks/5/delete
  delete "/user_parks/:id/delete" do
    redirect "/user_parks"
  end
end
