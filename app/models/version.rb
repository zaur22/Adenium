class Version < ApplicationRecord
	belongs_to :page
	has_many :version_block_relations
	has_many :blocks, through: :version_block_relations
end
