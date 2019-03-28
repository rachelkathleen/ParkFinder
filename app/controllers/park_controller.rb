require_relative '../../config/environment'

class ParkController < ApplicationController

  get '/parks' do
    erb :'park_views/parks'
  end


  get '/parks/:id' do
    @park = Park.find(params[:id])
    erb :'park_views/show'
  end

  get '/parks/been_to' do

  end

  get '/parks/bucket_list' do
    
  end
  # get '/parks/:park_name' do
  #   @park = Park.find_by(park_name: params[:park_name])
  #   erb :'/show'
  # end
end
