# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_chocolates, through: :bookmarks, source: :chocolate
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  
  validates :email, uniqueness: true, presence: true

  enum role: { general: 0, admin: 1 }

  # def own?(object)
  #   id == object.user_id
  # end
  
  # register and remove bookmark
  def bookmark(chocolate)
    bookmarks_chocolates << chocolate
  end

  def unbookmark(chocolate)
    bookmarks_chocolates.destroy(chocolate)
  end

  # def bookmark?(chocolate)
  #   bookmarks_chocolates.include?(chocolate)
  # end
end
