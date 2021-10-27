class Review < ApplicationRecord
  belongs_to :chocolate
  validates :sweet, presence: true
  validates :cacao, presence: true
  validates :appearance, presence: true
  validates :texture, presence: true
  validates :melt, presence: true

end
