class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer
  belongs_to :employee

  def name
  	if self.customer
  		"#{self.customer.name} #{self.user.email}"
  	elsif self.employee
  		"#{self.employee.name} #{self.user.email}"
  	else
  		self.user.email
  	end	
  end
end
