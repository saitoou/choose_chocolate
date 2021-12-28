class Admin::BaseController < ApplicationController
  before_action :check_admin
  layout 'admin/layouts/application'

  private

  def not_authenticated
    flash[:warning] = "ログインしてください"
    redirect_to admin_login_path
  end

  def check_admin
    if !(current_user.admin?)
      flash.now[:notice] = "権限がありません"
      redirect_to root_path
    end
  end
end
