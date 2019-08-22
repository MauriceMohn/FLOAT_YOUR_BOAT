class BoatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return false
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
