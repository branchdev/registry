class SchoolInterest < ActiveRecord::Base
	has_and_belongs_to_many :teachers, dependent: :destroy
end
