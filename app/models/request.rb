class Request < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  STATUS = ['pending', 'request approved', 'request denied']

  validates :status, presence: true, inclusion: {in: STATUS}
  validates :user, uniqueness: { scope: :pet, message: "can't be empty"}
end
