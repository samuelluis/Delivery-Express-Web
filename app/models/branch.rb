class Branch < ActiveRecord::Base
  belongs_to :customer

  has_many :orders
  has_many :receivers
  has_many :stops

  def name
  	"#{self.customer.name} - #{self.name}"
  end
end
