class StressFreeChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id = Review.where(cacao: 5).take(1).map(&:id)
    @stress_free_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @stress_free_review = Review.find_by(chocolate_id: review_id)
  end
end
