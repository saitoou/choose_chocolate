class TiredChocosController < ApplicationController
  def new
    # ランダムにチョコレートをとってくる
    @tired_choco = Chocolate.joins(:review).merge(Review.where(sweet:4, melt:4)).take(1)
    # レーダーチャートで示したいので取得
    @chocolate = @tired_choco.map(&:id)
    @tired_review = Review.find_by(chocolate_id: @chocolate)
  end
end
