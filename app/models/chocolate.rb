class Chocolate < ApplicationRecord
  has_one :review, dependent: :destroy
  validates :name, presence: true
  validates :detail, presence: true
end
