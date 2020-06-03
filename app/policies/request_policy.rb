class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    (record.pet.user != user) && !record.pet.users.include?(user)
  end

  def update?
    record.pet.user == user
  end

  def index?
    (record.user == user) || (record.pet.user == user)
  end
end
