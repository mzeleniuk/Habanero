require 'rails_helper'

feature 'Looking up recipes', js: true do
  before do
    Recipe.create!(name: 'Baked Potato w/ Cheese', instructions: 'Test instruction 1.')
    Recipe.create!(name: 'Garlic Mashed Potatoes', instructions: 'Test instruction 2.')
    Recipe.create!(name: 'Potatoes Au Gratin', instructions: 'Test instruction 3.')
    Recipe.create!(name: 'Baked Brussel Sprouts', instructions: 'Test instruction 4.')
  end

  scenario 'finding recipes' do
    visit '/'
    fill_in 'keywords', with: 'baked'
    click_on 'Search'

    expect(page).to have_content('Baked Potato')
    expect(page).to have_content('Baked Brussel Sprouts')
  end
end
