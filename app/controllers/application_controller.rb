# frozen_string_literal: true

class ApplicationController < ActionController::Base

  private
  def not_authenticated
    flash[:alert] = 'ログインしてください'
    redirect_to login_url
  end
end
