class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :reporter
      can :create, Report
      can :read, Report, user_id: user.id
    end
  end
end
