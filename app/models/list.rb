class List < ApplicationRecord
  # Associações
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # Validações
  validates :name, presence: true, uniqueness: true

  has_one_attached :photo
end
