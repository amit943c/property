class Photo < ApplicationRecord
	belongs_to :project, :location
end
