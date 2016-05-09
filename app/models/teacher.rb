class Teacher < ActiveRecord::Base
	has_one :user, as: :meta, dependent: :destroy
	has_and_belongs_to_many :school_interests
	accepts_nested_attributes_for :user
end
