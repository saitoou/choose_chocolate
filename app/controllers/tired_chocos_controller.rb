class TiredChocosController < ApplicationController
  def new
    @tired_choco = Chocolate.joins(:review).merge(Review.where(sweet:4, melt:4)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @tired_choco.ids
    @review = Review.find(@chocolate)
  end
end
