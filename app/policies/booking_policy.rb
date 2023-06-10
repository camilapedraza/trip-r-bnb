class BookingPolicy < ApplicationPolicy
  def show?
    record.user == user || owner? || user.admin? # can define just admin? method in ApplicationPolicy
  end

  def new?
    create?
  end

  def create?
    true
  end

  def owner?
    record.car.user == user
  end

  def edit?
    update?
  end

  def update?
    record.user == user
    # record: the restaurant passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

  def destroy?
    record.user == user || owner?
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      user.admin? ? scope.all : scope.where(user: user).or(scope.where(car_id: Car.where(user: user).ids))
      # can also implement as just admin? but need to define in application policy > scope class
      # scope.all
      # If users can see all restaurants
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end
end
