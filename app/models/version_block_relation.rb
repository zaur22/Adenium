class VersionBlockRelation < ApplicationRecord
  belongs_to :version
  belongs_to :block
end
