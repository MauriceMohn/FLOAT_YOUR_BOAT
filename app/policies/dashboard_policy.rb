class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  private

  def is_owner?
    record.user == user
  end
end
