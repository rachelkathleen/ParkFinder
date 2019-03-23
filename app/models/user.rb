class User < ActiveRecord::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/user_views'
  end

end
