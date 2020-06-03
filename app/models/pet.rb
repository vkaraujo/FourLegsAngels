class Pet < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
