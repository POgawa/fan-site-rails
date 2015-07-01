require "rails_helper"

describe Rating do
  it {should belong_to :work}
  it {should validate_presence_of :vote}
end
