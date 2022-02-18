# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_chocolates, through: :bookmarks, source: :chocolate
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  
  validates :email, uniqueness: true, presence: true
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  enum role: { general: 0, admin: 1 }

  # register and remove bookmark
  def bookmark(chocolate)
    bookmarks_chocolates << chocolate
  end

  def unbookmark(chocolate)
    bookmarks_chocolates.destroy(chocolate)
  end

end
