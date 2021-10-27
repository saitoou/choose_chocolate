class Chocolate < ApplicationRecord
  has_one :review, dependent: :destroy
  validates :name, presence: true

end
