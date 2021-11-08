class ExhaustedChocosController < ApplicationController
  def new
    @exhausted_choco = Chocolate.joins(:review).merge(Review.where(sweet:5)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @exhausted_choco.ids
    @review = Review.find(@chocolate)
  end
end
