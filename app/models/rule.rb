class Rule < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :name, :operator, :value
end
