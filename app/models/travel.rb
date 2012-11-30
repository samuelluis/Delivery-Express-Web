class Travel < ActiveRecord::Base
  belongs_to :employee

  has_many :delivery_bus_travels
  has_many :delivery_buses, :through => :delivery_bus_travels
  has_many :stops

  def name
  	"#{self.code} - #{self.date.strftime("%m/%d/%Y")}"
  end
end
