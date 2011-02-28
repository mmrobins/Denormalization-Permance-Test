class CreateNormalizedFacts < ActiveRecord::Migration
  def self.up
    create_table :normalized_facts do |t|
      t.integer :node_id
      t.integer :fact_name_id
      t.string :value

      t.timestamps
    end

    add_index :normalized_facts, [:fact_name_id]
    add_index :normalized_facts, [:node_id]
  end

  def self.down
    drop_table :normalized_facts
  end
end
