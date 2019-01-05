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

  def new_salary?
    update_salary?
  end

  def update_salary?
    update?
  end

  def new_date_applied?
    update_date_applied?
  end

  def update_date_applied?
    update?
  end

  def new_url?
    update_url?
  end

  def update_url?
    update?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
