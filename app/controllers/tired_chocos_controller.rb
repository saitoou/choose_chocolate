class TiredChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id_arry = Review.where(sweet: 4, melt: 4).map(&:id)
    review_id = review_id_arry[rand(review_id_arry.size)]
    @tired_choco = Chocolate.find(review_id)
    # レーダーチャートで示したいので取得
    @tired_review = Review.find_by(chocolate_id: review_id)
  end
end
