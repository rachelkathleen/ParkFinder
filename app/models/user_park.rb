class UserPark < ActiveRecord::Base
  has_many :users
  has_many :parks
end
