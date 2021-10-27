class Review < ApplicationRecord
  belongs_to :chocolate
  validates :sweet, presence: true
  validates :cacao, presence: true
  validates :appearance, presence: true
  validates :texture, presence: true
  validates :melt, presence: true

  # scope :with_chocolates, -> { joins(:chocolate) }
  # scope :exhausted_choices, -> { where(sweet: 4..5, cacao: 1..3, appearance: 4..5, texture: 1..5, melt: 4..5) }
  # scope :tired_choices, -> { where(sweet: 2..4, cacao: 2..4, appearance: 3..4, texture: 1..5, melt: 3..5) }
  # scope :good_stimulus_choices, -> { where(sweet: 2..4, cacao: 3..5, appearance: 2..4, texture: 1..5, melt: 1..4) }
  # scope :stress_free_choices, -> { where(sweet: 1..3, cacao: 3..5, appearance: 2..5, texture: 1..5, melt: 1..3) }
  # scope :limit_choco, -> { limit(15) }

end
