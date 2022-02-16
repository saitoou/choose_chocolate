class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[create destroy]

  def create
    current_user.bookmark(@chocolate)
  end

  def destroy
    current_user.unbookmark(@chocolate)
  end

  private

  def set_bookmark
    @chocolate = Chocolate.find(params[:chocolate_id])
  end
end
