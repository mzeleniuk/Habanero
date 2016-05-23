class Recipe < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 2, maximum: 70}
  validates :instructions, presence: true, length: {minimum: 10}
end
