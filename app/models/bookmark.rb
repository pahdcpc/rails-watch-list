class Bookmark < ApplicationRecord
  # Associações
  belongs_to :movie
  belongs_to :list

  # Validações
  validates :comment, length: { minimum: 6 }
  # Garante que o par [movie, list] é único
  validates :movie_id, uniqueness: { scope: :list_id, message: "já está na lista" }
end
