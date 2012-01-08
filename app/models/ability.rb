class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.has_role? :moderator
	  can [:read], [Place]
      can [:update, :destroy], [Place], :user_id => user.id
    elsif user.has_role? :owner
	  can [:read], [Place]
	  can [:myPlaces], [Place]
      can [:read, :myOwnerRequests], [Request]
      can [:create, :update, :destroy], [Place], :user_id => user.id
    elsif user.has_role? :tenant
      can [:read], [Place]
      can [:read, :myTenantRequests], [Request]
    else
	  can [:index], [Place]
    end
  end
end
