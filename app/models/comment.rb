class Comment < ActiveRecord::Base
  belongs_to :work
  validates :description, :presence => true


end
