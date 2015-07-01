require "rails_helper"


describe "adds a work to a theme" do
  it "adds a new work to a theme" do
    visit root_path
    click_on 'Add theme'
    fill_in 'Title', :with => 'Theme title'
    fill_in 'Description', :with => 'Theme description'
    click_on 'Create Theme'
    click_on 'Theme title'
    click_on 'Add a work'
    fill_in 'Title', :with => 'First one'
    fill_in 'Description', :with => 'first description'
    click_on 'Create Work'
    expect(page).to have_content 'First one'
  end
end
