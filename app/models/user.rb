class User < ActiveRecord::Base
  has_secure_password

  has_many :notes
  has_many :user_parks
  has_many :parks, through: :user_parks

end
