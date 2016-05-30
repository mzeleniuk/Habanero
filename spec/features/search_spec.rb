require 'rails_helper'

feature 'Looking up recipes', js: true do
  let!(:first_recipe) { create :recipe, name: 'Baked Potato w/ Cheese' }
  let!(:second_recipe) { create :recipe, name: 'Garlic Mashed Potatoes' }
  let!(:third_recipe) { create :recipe, name: 'Baked Brussel Sprouts' }

  scenario 'finding recipes' do
    visit '/'
    fill_in 'keywords', with: 'baked'
    click_on 'Search'

    expect(page).to have_content('Baked Potato')
    expect(page).to have_content('Baked Brussel Sprouts')
  end
end
