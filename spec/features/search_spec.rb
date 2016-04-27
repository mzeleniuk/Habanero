require 'rails_helper'

feature 'Looking up recipes', js: true do
  before do
    Recipe.create!(name: 'Baked Potato w/ Cheese', instructions: 'Test 1.')
    Recipe.create!(name: 'Garlic Mashed Potatoes', instructions: 'Test 2.')
    Recipe.create!(name: 'Potatoes Au Gratin', instructions: 'Test 3.')
    Recipe.create!(name: 'Baked Brussel Sprouts', instructions: 'Test 4.')
  end

  scenario 'finding recipes' do
    visit '/'
    fill_in 'keywords', with: 'baked'
    click_on 'Search'

    expect(page).to have_content('Baked Potato')
    expect(page).to have_content('Baked Brussel Sprouts')
  end
end
