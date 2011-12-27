class User < ActiveRecord::Base
	include RoleModel
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :roles, :email, :password, :password_confirmation, :remember_me

	has_many :places, :dependent => :destroy
	has_many :histories, :dependent => :destroy
	has_one :preference
  
  roles_attribute :roles_mask
  
  roles :admin, :moderator, :owner, :tenant, :banned
end
