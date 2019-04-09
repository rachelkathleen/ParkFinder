class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :park

  validates :title, presence: true
  validates :content, presence: true
  validates :park_id, presence: true
  validates :user_id, presence: true
end
