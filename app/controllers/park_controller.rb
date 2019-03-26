require_relative '../../config/environment'

class ParkController < ApplicationController

  get '/parks' do
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

# HTTP VERB          ROUTE               ACTION             DESCRIPTION
#   GET             /artists             index       Shows all the artists in the db
#   GET             /artists/new         new         Show a FORM for a new artist
#   POST            /artists             create      Creates an artist in DB, and then typically redirects
#   GET             /artists/:id         show        Show info about specific artist
#   GET             /artists/:id/edit    edit        Show a FORM to edit a specific artist
#   PUT/PATCH       /artists/:id         update      Edits an artist in DB, and then typically redirects
#   DELETE          /artists/:id         destroy     Deletes an artist from DB, and then typically redirects
