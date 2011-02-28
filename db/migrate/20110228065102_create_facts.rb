class CreateFacts < ActiveRecord::Migration
  def self.up
    create_table :facts do |t|
      t.string :name
      t.string :value
      t.integer :node_id

      t.timestamps
    end

    add_index :facts, [:node_id]
  end

  def self.down
    drop_table :facts
  end
end
