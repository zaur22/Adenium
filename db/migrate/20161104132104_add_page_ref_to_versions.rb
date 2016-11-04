class AddPageRefToVersions < ActiveRecord::Migration[5.0]
  def change
    add_reference :versions, :page, foreign_key: true
  end
end
