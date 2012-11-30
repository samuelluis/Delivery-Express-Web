class Order < ActiveRecord::Base
  belongs_to :stop
  belongs_to :branch
  belongs_to :supplier
  belongs_to :reason

  has_attached_file :customer_sign,
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :path => "/order_sign/:id/:filename",
  :styles => { 
    :medium => "300x300>",
    :thumb => "100x100>"
  }

  def name
    if self.new_record?
      "#{self.code}"
    else
      "#{self.code} to #{self.branch.name}"
    end
  end
end
