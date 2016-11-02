class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.string :name
      t.text :html
      t.text :css
      t.integer :position

      t.timestamps
    end
  end
end
