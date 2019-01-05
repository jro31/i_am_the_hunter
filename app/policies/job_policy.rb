class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def update?
    user_is_owner?
  end

  def new_position?
    update_position?
  end

  def update_position?
    update?
  end

  def new_location?
    update_location?
  end

  def update_location?
    update?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
