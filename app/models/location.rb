class Location < ApplicationRecord
	has_many :projects, :photos
end
