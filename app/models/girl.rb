class Girl < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  validates :product_code, :uniqueness => true, :presence => true
end
