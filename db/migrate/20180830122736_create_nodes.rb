class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.string :data
      t.integer :nodeNumber
      t.integer :referenceNodeId
      t.integer :genesisReferenceNodeId
      t.references :record, foreign_key: true

      t.timestamps
    end
  end
end
