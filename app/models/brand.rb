class Brand < ActiveRecord::Base
  attr_accessible :enable, :keyword, :name
  has_many :rules
end
