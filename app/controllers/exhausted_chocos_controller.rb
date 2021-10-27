class ExhaustedChocosController < ApplicationController
  def new
    @exhausted_chocos = Chocolate.joins(:review).merge(Review.where(sweet:5)).limit(6)
  end
end
