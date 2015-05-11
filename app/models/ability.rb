class Ability
  include CanCan::Ability

  def initialize(user)
    
#     alias_action :create, :read, :update, :destroy, :to => :crud
    
    if user.role? :admin
      can :manage, :all
    elsif user.role? :teacher
      can :manage, [Chapter, Lesson, Attendance, Grade, Exam]
      can :read, Group
      can [:read, :update], [Student, Course]
      cannot [:create, :destroy], [Student, Course]
    else
      #       Temporary for now
      can :manage, :all
      #       Gotta sort the issue with role assignments first
#       can :read, [Course, Student, Group, Chapter, Lesson, Grade, Exam, Guardian]

  end
  end
end