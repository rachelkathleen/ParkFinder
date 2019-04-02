class UserParksController < ApplicationController

use Rack::Flash
  get '/parks/user_parks/new' do
    erb :'user_parks/new'
  end

  post '/parks/user_parks/new' do
    if params[:park_ids]
      params[:park_ids].each do |park_id|
        user_id = params[:user_id]
        been_to = params[:been_to]
        bucket_list = params[:bucket_list]
        @userpark = UserPark.create(user_id: user_id, park_id: park_id, been_to: been_to, bucket_list: bucket_list)
        end
        redirect "/notes/new"
      else
    @userpark = UserPark.new(params)
      if @userpark.save
          redirect "/notes/new"
      else
          erb :failure
      end
    end
  end

  patch '/parks/user_parks/:id' do
    @up = UserPark.find(params[:id])
    if @up.update(been_to: params[:been_to], bucket_list: params[:bucket_list])
      redirect "/user_page"
    else
      erb :'user_views/failure'
    end
  end

  get '/user_parks/been_to' do
    erb :'user_views/been_to'
  end

  get '/user_parks/bucket_list' do
    erb :'user_views/bucket_list'
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
