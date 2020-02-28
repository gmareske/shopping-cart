class Ingredient < ApplicationRecord
  validates :name, presence: true
  has_many :measurements
  has_many :recipes, :through => :measurements
end
