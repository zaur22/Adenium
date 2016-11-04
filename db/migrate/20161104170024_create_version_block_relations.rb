class CreateVersionBlockRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :version_block_relations do |t|
      t.references :version, foreign_key: true
      t.references :block, foreign_key: true

      t.timestamps
    end
  end
end
