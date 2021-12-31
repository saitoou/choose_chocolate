class Admin::BaseController < ApplicationController
  before_action :check_admin
  layout 'admin/layouts/application'

  private

  def not_authenticated
    flash[:warning] = "ログインしてください"
    redirect_to admin_login_path
  end

  def check_admin
    redirect_to root_path, warnign: "管理者以外ログインできません" unless current_user.admin?
  end
end
