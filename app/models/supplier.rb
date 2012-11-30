class Supplier < ActiveRecord::Base
	has_many :orders
end
