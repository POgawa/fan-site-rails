require "rails_helper"


describe "edit a work" do
  it "edit a work" do
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
    click_on 'First one'
    click_on "Edit work"
    fill_in 'Title', :with => "New work title"
    click_on "Update Work"
    expect(page).to have_content 'New work title'
  end
end
