class GoodStimulusChocosController < ApplicationController
  def new
    @good_stimulus_choco = Chocolate.joins(:review).merge(Review.where(appearance:4, texture:4)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @good_stimulus_choco.ids
    @review = Review.find(@chocolate)
  end
end
