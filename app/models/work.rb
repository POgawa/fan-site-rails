class Work < ActiveRecord::Base
  belongs_to :theme
  has_many :comments
  validates :title, :presence => true
  validates :description, :presence => true
end
