class DeliveryBusTravel < ActiveRecord::Base
  belongs_to :travel
  belongs_to :delivery_bus

  has_attached_file :sign,
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :path => "/delivery_bus_sign/:id/:filename",
  :styles => { 
    :medium => "300x300>",
    :thumb => "100x100>"
  }

  def name
    if self.new_record?
      ""
    else
      "#{self.delivery_bus.name} in #{travel.name}"
    end
  end
end
