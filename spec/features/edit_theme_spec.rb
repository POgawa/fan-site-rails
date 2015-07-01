require "rails_helper"


describe "edit theme" do
  it "edit a theme" do
    visit themes_path
    click_on 'Add theme'
    fill_in 'Title', :with => 'Theme title'
    fill_in 'Description', :with => 'Theme description'
    click_on 'Create Theme'
    click_on 'Theme title'
    click_on 'Edit theme'
    fill_in 'Title', :with => 'test 2'
    click_on 'Update Theme'
    expect(page).to have_content 'test 2'
  end
end
