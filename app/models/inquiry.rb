class Inquiry < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :message, presence: true, length: { maximum: 500 }

  enum title: { bug: 0, request:1, others: 2 }
end
