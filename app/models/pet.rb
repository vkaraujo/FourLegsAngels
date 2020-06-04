class Pet < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests
  has_one_attached :photo
end
