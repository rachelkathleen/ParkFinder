class UserPark < ActiveRecord::Base
  belongs_to :user
  belongs_to :park
end
