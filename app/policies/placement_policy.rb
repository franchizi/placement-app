class PlacementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      @user.admin?
    end

    def edit?
      @user.admin? || user_is_owner_of_placement?
    end

    private

    def user_is_owner_of_placement?
      #I haven't made the join table yet to connect license_holder and licensee yet.
      @placement.licensee.license_holder == current_user
    end
  end
end
