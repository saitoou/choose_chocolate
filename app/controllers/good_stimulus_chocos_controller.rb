class GoodStimulusChocosController < ApplicationController
  def new
    @good_stimulus_choco = Chocolate.joins(:review).merge(Review.where(appearance:4, texture:4)).take(1)
    #  レーダーチャートで示したいので取得
    @chocolate = @good_stimulus_choco.map(&:id)
    @good_stimulus_review = Review.find_by(chocolate_id: @chocolate)
  end
end
