class Request < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :user, uniqueness: { scope: :pet, message: "can't be empty"}
end
