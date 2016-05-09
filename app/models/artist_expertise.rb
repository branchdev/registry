class ArtistExpertise < ActiveRecord::Base
	has_and_belongs_to_many :artists, dependent: :destroy
end
