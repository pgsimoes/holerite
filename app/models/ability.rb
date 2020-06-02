class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all                   # allow everyone to read everything
    can :read, :rails_admin       # only allow admin users to access Rails Admin
    #return unless user && user.admin?
    if user.kind == "owner"
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :read, :dashboard           # allow access to dashboard  
      can :manage, :all               # allow superadmins to do anything
    end
  end
end