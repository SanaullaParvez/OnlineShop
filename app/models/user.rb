class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  after_create :default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :address, :country_id, :city_id, :area_code, :phone
  #attr_accessible :email, :password, :password_confirmation
  has_many :posts

  def has_role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end


  private
  def default_role
    self.roles << Role.find_by_name("user")
    self.save
  end
end
