class Note < ActiveRecord::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/note_views'
  end

  belongs_to :user
end
