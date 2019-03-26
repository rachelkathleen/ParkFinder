require_relative '../../config/environment'

class ParkController < ApplicationController
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/park_views'
  end

  get '/parks' do
    erb :parks
  end


  get '/parks/:id' do
    @park = Park.find(params[:id])
    erb :'/show'
  end

  # get '/parks/:park_name' do
  #   @park = Park.find_by(park_name: params[:park_name])
  #   erb :'/show'
  # end
end
