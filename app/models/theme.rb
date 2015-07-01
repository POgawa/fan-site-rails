class Theme < ActiveRecord::Base
  has_many :works
  validates :title, :presence => true
  validates :description, :presence => true
end
