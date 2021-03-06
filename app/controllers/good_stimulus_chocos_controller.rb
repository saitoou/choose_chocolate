# frozen_string_literal: true

class GoodStimulusChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id_arry = Review.where('texture>=3').map(&:id)
    review_id = review_id_arry[rand(review_id_arry.size)]
    @good_stimulus_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @good_stimulus_review = Review.find_by(chocolate_id: review_id)
  end
end
