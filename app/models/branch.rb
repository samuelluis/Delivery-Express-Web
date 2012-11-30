class Branch < ActiveRecord::Base
  belongs_to :customer

  has_many :orders
  has_many :receivers
  has_many :stops

  def pretty_name
  	if self.new_record?
  		"#{self.name}"
  	else
  		"#{self.customer.name} - #{self.name}"
  	end
  end
end
