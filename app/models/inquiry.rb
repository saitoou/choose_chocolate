class Inquiry < ApplicationRecord
  validates :message, presence: true, length: { maximum: 500 }

  enum title: { bug: 0, request:1, others: 2 }
end
