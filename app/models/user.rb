class User < ActiveRecord::Base
	include RoleModel

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :roles,:login, :username, :name, :surname, :years, :email, :password, :password_confirmation, :remember_me
  attr_accessor :login

	has_many :authentications
	has_many :places, :dependent => :destroy
	has_many :histories, :dependent => :destroy
	has_one :preference
  
  roles_attribute :roles_mask
  
  roles :moderator, :owner, :tenant, :banned
  
  def apply_omniauth(omniauth)
	self.email = omniauth['user_info']['email'] if email.blank?
	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  def password_required?
	(authentications.empty? || !password.blank?) && super
  end

  def self.find_for_database_authentication(warden_conditions)
   conditions = warden_conditions.dup
   login = conditions.delete(:login)
   where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
 end

end
