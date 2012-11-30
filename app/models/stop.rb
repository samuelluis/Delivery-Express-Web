class Stop < ActiveRecord::Base
  belongs_to :travel
  belongs_to :branch

  has_many :orders

  def name
  	if self.travel && self.branch
  		return "#{self.travel.name} at #{self.branch.name}"
  	else
  		return (self.new_record?) ? "" : self.id
  	end
  end
end
