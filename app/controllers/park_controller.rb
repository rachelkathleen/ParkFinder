require_relative '../../config/environment'

class ParkController < ApplicationController

  use Rack::Flash

  get '/parks' do
    @parks = Park.all
    erb :'park_views/parks'
  end

  post '/parks' do
    @parks = Park.all.select{|park| park.park_name.downcase.include?(params[:park_name].downcase)}
    erb :'park_views/parks'
  end


  get '/parks/:id' do
    @park = Park.find(params[:id])
    erb :'park_views/show'
  end



  # get '/parks/:park_name' do
  #   @park = Park.find_by(park_name: params[:park_name])
  #   erb :'/show'
  # end
end
