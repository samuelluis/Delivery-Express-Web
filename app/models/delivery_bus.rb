class DeliveryBus < ActiveRecord::Base
  has_many :delivery_bus_travels
  has_many :delivery_buses, :through => :delivery_bus_travels
  has_many :employees

  def name
  	self.code
  end
end
