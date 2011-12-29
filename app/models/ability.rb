class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :moderator
      can [:read, :update, :destroy], [Place], :user_id => user.id
    elsif user.has_role? :owner
	  can [:read], [Place]
      can [:create, :update, :destroy], [Place], :user_id => user.id
    elsif user.has_role? :tenant
      can [:read], [Place]
    else
	  can [:index], [Place]
    end
  end
end
