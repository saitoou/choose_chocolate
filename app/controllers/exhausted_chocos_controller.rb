class ExhaustedChocosController < ApplicationController
  def new
    # ランダムにchocolate_idをとってくる
    review_id_arry = Review.where("sweet>=4").map(&:id)
    review_id = review_id_arry[rand(review_id_arry.size)]
    @exhausted_choco = Chocolate.find(review_id)
    #  レーダーチャートで示したいので取得
    @exhausted_review = Review.find_by(chocolate_id: review_id)
  end
end
