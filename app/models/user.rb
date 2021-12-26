class User < ApplicationRecord
  has_many :chocolates

  validations: name, presence: true
  validations: email, uniquness: { case_sensitive: true }, presence: true

  enum role: { general: 0, admin: 1 }
end
