class Recipe < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :measurements
  has_many :ingredients, :through => :measurements
end
