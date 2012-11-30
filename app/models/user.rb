class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  has_one :profile
  has_one :employee, :through => :profile
  has_one :customer, :through => :profile

  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile, :employee, :customer

  def name
  	if self.customer
  		self.customer.name
  	elsif self.employee
  		self.employee.name
  	else
  		self.user.email
  	end
  end
end
