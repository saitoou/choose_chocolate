class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: %i[edit update destroy]
  def index
    @users = User.all
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path
      flash[:success] = "ユーザー情報を変更しました"
    else
      flash.now[:danger] = "ユーザー情報を変更できませんでした"
      render :edit
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :passward, :password_confirmation, :role)
  end
end
