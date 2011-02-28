class Node < ActiveRecord::Base
  has_many :facts
  has_many :normalized_facts
end
