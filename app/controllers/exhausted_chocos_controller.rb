class ExhaustedChocosController < ApplicationController
  def new
    # ランダムにチョコレートをとってくる
    @exhausted_choco = Chocolate.joins(:review).merge(Review.where(sweet:5)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @exhausted_choco.map(&:id)
    @exhausted_review = Review.find_by(chocolate_id: @chocolate)
  end
end
