# frozen_string_literal: true

class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver_now
      flash[:success] = '送信完了しました'
      redirect_to root_path
    else
      flash.now[:alert] = '送信失敗しました'
      render :new
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :title, :message)
  end
end
