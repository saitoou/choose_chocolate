class MypagesController < ApplicationController
  before_action :set_mypage, only: %i[show edit upadate bookmark]

  def show; end

  def edit; end

  def update
    if @user.update(user_update_params)
      render json: { user: @user }
    else
      render json: { user: @user, errors: { messages: @user.errors.full_messages } }, status: :bad_request
    end
  end

  def bookmark
    @bookmark_chocolates = current_user.bookmarks_chocolates
  end

  private

  def user_update_params
    params.require(:user).permit(:name, :email)
  end

  def set_mypage
    @user = User.find(current_user.id)
  end
end
