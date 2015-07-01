class Rating<ActiveRecord::Base
  belongs_to :work
  validates_presence_of :vote
end
