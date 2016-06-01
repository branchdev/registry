class Artist < ActiveRecord::Base
	has_one :user, as: :meta, dependent: :destroy
	has_and_belongs_to_many :artist_expertises
	accepts_nested_attributes_for :user

	has_many :connections
	has_many :teachers, through: :connections


# 	def add_connection
# 		Connections.
# 	end
end
