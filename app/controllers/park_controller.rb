require_relative '../../config/environment'
class ParkController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/park_views'
  end
end
