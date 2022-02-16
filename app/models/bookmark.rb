class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :chocolate

  validates :user_id, uniqueness: { scope: :chocolate_id }
end
