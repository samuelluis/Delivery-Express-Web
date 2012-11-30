class Reason < ActiveRecord::Base
	def name
		self.description
	end
end
