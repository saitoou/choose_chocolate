class GoodStimulusChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id = Review.where(appearance: 4, texture: 4).take(1).map(&:id)
    @good_stimulus_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @good_stimulus_review = Review.find_by(chocolate_id: review_id)
  end
end
