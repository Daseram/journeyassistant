class Vehicle < ActiveRecord::Base

	before_validation :set_category, on: [:create, :update]

	has_many :routes

	validates :year, presence: true

	validates :plate, presence: true, uniqueness: true

    validates :color, presence: true

    validate :plate_policy

    Category = {one: 1, two: 2}

	

	def set_category
		self.category = self.plate.upcase.start_with?('ABC') ? Category[:one] : Category[:two]
	end

	def get_category
		return "1" if self.category == Category[:one]
		return "2" if self.category == Category[:two]
	end

	def plate_policy
		if !self.plate.start_with?('ABC', 'DFG')
			errors.add(:plate, 'always must start with ABC or DFG')
		end
	end

	def self.get_year
		(1960..DateTime.now.year)
	end


end
