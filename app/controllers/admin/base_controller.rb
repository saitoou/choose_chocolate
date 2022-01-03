class Admin::BaseController < ApplicationController
  before_action :check_admin
  layout 'admin/layouts/application'

  private

  def not_authenticated
    flash[:alert] = "ログインしてください"
    redirect_to admin_login_path
  end

  def check_admin
    # 他ユーザーがいないためnilで判定
    if current_user == nil
      redirect_to root_path, warnign: "管理者以外ログインできません"
    end
  end
end
