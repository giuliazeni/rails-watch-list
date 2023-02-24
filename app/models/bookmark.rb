class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 3 }
  validates :movie, uniqueness: { scope: :list }
  validates :list, uniqueness: { scope: :movie }
end
