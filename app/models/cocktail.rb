class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :name, uniqueness: true, presence: true
end
