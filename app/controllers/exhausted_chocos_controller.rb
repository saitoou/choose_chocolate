class ExhaustedChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id = Review.where(sweet: 5).take(1).map(&:id)
    @exhausted_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @exhausted_review = Review.find_by(chocolate_id: review_id)
  end
end
