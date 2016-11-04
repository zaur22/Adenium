class Block < ApplicationRecord
	has_many :version_block_relations
	has_many :versions, through: :version_block_relations
end
