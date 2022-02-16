class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to root_path
      flash[:success] = 'ログイン成功しました'
    else
      flash.now[:danger] = 'ログイン失敗しました'
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = 'ログアウトしました'
    redirect_to root_path
  end
end
