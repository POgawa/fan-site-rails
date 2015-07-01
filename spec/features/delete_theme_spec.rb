require "rails_helper"

describe 'delete theme' do
  it 'deletes a theme' do
  visit themes_path
  click_on 'Add theme'
  fill_in 'Title', :with => 'Theme title'
  fill_in 'Description', :with => 'Theme description'
  click_on 'Create Theme'
  click_on 'Theme title'
  click_on 'Delete'
  expect(page).to have_content 'Themes'
  end
end
