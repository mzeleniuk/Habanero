require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'Name' do
    it 'is not valid when name is blank' do
      recipe = Recipe.create(name: '', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:name]).to eq(["can't be blank", 'is too short (minimum is 2 characters)'])
    end

    it 'is not valid when name is too long' do
      recipe = Recipe.create(name: 'Name' * 20, instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:name]).to eq(['is too long (maximum is 70 characters)'])
    end

    it 'is not valid when name is too short' do
      recipe = Recipe.create(name: 'A', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:name]).to eq(['is too short (minimum is 2 characters)'])
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
      expect(recipe.errors[:instructions]).to eq(["can't be blank", 'is too short (minimum is 10 characters)'])
    end

    it 'is not valid when instructions is too short' do
      recipe = Recipe.create(name: 'Test recipe', instructions: 'Test')

      expect(recipe.valid?).to eq(false)
      expect(recipe.errors[:instructions]).to eq(['is too short (minimum is 10 characters)'])
    end

    it 'is valid when instructions is present' do
      recipe = Recipe.create(name: 'Test recipe', instructions: 'Test instructions.')

      expect(recipe.valid?).to eq(true)
    end
  end
end
