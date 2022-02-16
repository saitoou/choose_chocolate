# frozen_string_literal: true

class StressFreeChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id_arry = Review.where('cacao>=3').map(&:id)
    review_id = review_id_arry[rand(review_id_arry.size)]
    #stress_free_choco
    @stress_free_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @stress_free_review = Review.find_by(chocolate_id: review_id)
  end
end
