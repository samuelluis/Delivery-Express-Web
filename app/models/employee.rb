class Employee < ActiveRecord::Base
  belongs_to :delivery_bus

  has_one :profile

  has_many :travels

end
