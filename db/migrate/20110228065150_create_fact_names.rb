class CreateFactNames < ActiveRecord::Migration
  def self.up
    create_table :fact_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :fact_names
  end
end
