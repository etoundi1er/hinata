class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
#     if user.admin?
#       can :manage, :all
#     elsif user.employee?
#       can :read, Item
#       can :create, Item
#       can :update, Item do |item|
#         item.try(:user) == user
#       end
#       can :destroy, Item do |item|
#         item.try(:user) == user
#       end
#     elsif user.student?
#       can :read, Item
#     end
  end
end