class Customer < ActiveRecord::Base
	has_many :branches

	has_one :profile
end
