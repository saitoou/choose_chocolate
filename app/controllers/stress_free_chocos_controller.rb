class StressFreeChocosController < ApplicationController
  def new
    @stress_free_choco = Chocolate.joins(:review).merge(Review.where(cacao:5)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @stress_free_choco.map(&:id)
    @stress_free_review = Review.find_by(chocolate_id: @chocolate)
  end
end
