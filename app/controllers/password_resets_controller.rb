class PasswordResetsController < ApplicationController
  before_action :set_password_resets, only: %i[edit update]
  before_action :find_token_id, only: %i[edit update]

  def new; end

  def create
    @user = User.find_by_email(params[:email])
    @user.deliver_reset_password_instructions! if @user
    redirect_to login_path
    flash[:success] = 'パスワードリセット手順を送信しました'
  end

  def edit; end

  def update
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.change_password(params[:user][:password])
      flash[:success] = 'パスワードを変更しました'
      redirect_to login_path
    else
      flash.now[:danger] = 'パスワード変更に失敗しました'
      render :edit
    end
  end

  private

  def set_password_resets
    @user = User.load_from_reset_password_token(params[:id])
    return not_authenticated if @user.blank?
  end

  def find_token_id
    @token = params[:id]
  end

end
