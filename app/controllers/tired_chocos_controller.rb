class TiredChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id = Review.where(sweet: 4, melt: 4).take(1).map(&:id)
    @tired_choco = Chocolate.find(review_id)
    # レーダーチャートで示したいので取得
    @tired_review = Review.find_by(chocolate_id: review_id)
  end
end
