require 'benchmark'

class PopulateTestData < ActiveRecord::Migration
  def self.up
    100.times do |i|
      n = Node.create(:name => "node_#{i}")
    end
    puts Benchmark.measure("denormalized") {
      Node.all.each do |n|
        100.times do |j|
          n.facts.create(
            :name => "fact_#{j}",
            :value => "fact_value_#{j}"
          )
        end
      end
    }
    puts Benchmark.measure("normalized") {
      Node.all.each do |n|
        100.times do |j|
          n.normalized_facts.create(
            :fact_name_id => FactName.find_or_create_by_name("fact_#{j}").id,
            :value => "fact_value_#{j}"
          )
        end
      end
    }
  end

  def self.down
  end
end
