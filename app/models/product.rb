class Product < ActiveRecord::Base
  attr_accessible :display, :name, :price
  scope :visible, -> { where(display: true) }
end
