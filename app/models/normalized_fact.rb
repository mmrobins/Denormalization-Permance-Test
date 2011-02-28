class NormalizedFact < ActiveRecord::Base
  belongs_to :fact_name
  belongs_to :node
end
