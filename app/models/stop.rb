class Stop < ActiveRecord::Base
  belongs_to :travel
  belongs_to :branch

  has_many :orders

  def name
  	"#{self.travel.name} at #{self.branch.name}"
  end
end
