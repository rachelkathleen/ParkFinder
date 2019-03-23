require_relative '../../config/environment'
class UserController < Sinatra::Base
  has_secure_password

  configure do
    set :public_folder, 'public'
    set :views, 'app/views/user_views'
  end
end
