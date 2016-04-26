require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'Name' do
    it 'is not valid when name is blank' do
      recipe = Recipe.create(name: '', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:name]).to eq(["can't be blank"])
    end

    it 'is valid when name is present' do
      recipe = Recipe.create(name: 'Test recipe', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(true)
    end
  end

  context 'Instructions' do
    it 'is not valid when instructions is blank' do
      recipe = Recipe.create(name: 'Test recipe', instructions: '')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:instructions]).to eq(["can't be blank"])
    end

    it 'is valid when instructions is present' do
      recipe = Recipe.create(name: 'Test recipe', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(true)
    end
  end
end
