class Connection < ActiveRecord::Base
	belongs_to :artist
	belongs_to :teacher
end
