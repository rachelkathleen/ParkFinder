class UserParksController < ApplicationController

  # GET: /user_parks
  get "/user_parks" do
    erb :"/user_parks/index.html"
  end

  # GET: /user_parks/new
  get "/user_parks/new" do
    erb :"/user_parks/new.html"
  end

  # POST: /user_parks
  post "/user_parks" do
    redirect "/user_parks"
  end

  # GET: /user_parks/5
  get "/user_parks/:id" do
    erb :"/user_parks/show.html"
  end

  # GET: /user_parks/5/edit
  get "/user_parks/:id/edit" do
    erb :"/user_parks/edit.html"
  end

  # PATCH: /user_parks/5
  patch "/user_parks/:id" do
    redirect "/user_parks/:id"
  end

  # DELETE: /user_parks/5/delete
  delete "/user_parks/:id/delete" do
    redirect "/user_parks"
  end
end
