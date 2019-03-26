require_relative '../../config/environment'
class NoteController < ApplicationController
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
end
