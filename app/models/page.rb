class Page < ApplicationRecord
	belongs_to :project
	has_many :versions
end
