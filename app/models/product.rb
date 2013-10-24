class Product < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :action, :image, :location, :platform, :price, :status, :title
end
