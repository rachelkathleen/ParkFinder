require_relative '../../config/environment'
class ParkController < ApplicationController
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/park_views'
  end

  get '/parks' do
    erb :parks
  end


  #trying to create dynamic route that will show the park name when a user
  # clicks on the link to that park

  # get '/parks/:park_name' do
  #   @park = Park.find(params[:id])
  #   erb :'/show'
  # end
end
