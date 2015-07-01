require "rails_helper"


describe Work do
  it {should belong_to :theme}
  it {should validate_presence_of :title}
  it {should validate_presence_of :description}
  it {should have_many :comments}
end
