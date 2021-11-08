class StressFreeChocosController < ApplicationController
  def new
    @stress_free_choco = Chocolate.joins(:review).merge(Review.where(cacao:5)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @stress_free_choco.ids
    @review = Review.find(@chocolate)
  end
end
