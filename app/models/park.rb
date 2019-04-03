class Park < ActiveRecord::Base
  has_many :notes
  has_many :user_parks
  has_many :users, through: :user_parks
end
