ActiveAdmin.register User do
 
  index do
	column :id
	column :email
	column :roles_mask, :sortable => :roles_mask do |u|
      div :class => "role" do
		if u.has_role? :moderator
			"moderator"
        elsif u.has_role? :owner
			"owner"
		elsif u.has_role? :tenant
			"tenant"
        end
      end
    end
	column :created_at
	column :last_sign_in_at
	column :last_sign_in_ip
	default_actions
  end
  
end
