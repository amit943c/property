class Project < ApplicationRecord
	belongs_to :location, :broker, :user, :photos
end
