class AddPositionToVersionBlockRelations < ActiveRecord::Migration[5.0]
  def change
    add_column :version_block_relations, :position, :integer
  end
end
