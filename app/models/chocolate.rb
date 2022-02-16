# frozen_string_literal: true

class Chocolate < ApplicationRecord
  has_one :review, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates :detail, presence: true

  has_one_attached :image
end
