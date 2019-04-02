class UserParksController < ApplicationController

  get '/parks/user_parks/new' do
    erb :'user_parks/new'
  end

  post '/parks/user_parks/new' do
    @userpark = UserPark.new(params)
    if @userpark.save
        redirect "/notes/new"
    else
        erb :failure
    end
  end


  get '/notes/:id/edit' do
    @up = UserPark.find(params[:id])
    erb :'note_views/edit'
  end

  patch '/parks/user_parks/:id' do
    @up = UserPark.find(params[:id])
    if @up.update(been_to: params[:been_to], bucket_list: params[:bucket_list])
      redirect "/user_page"
    else
      erb :'user_views/failure'
    end
  end

  delete '/parks/user_parks/:id' do
    @up = UserPark.find(params[:id])

    if @up.delete
      redirect '/user_page'
    else
      erb :'user_views/failure'
    end
  end
end
