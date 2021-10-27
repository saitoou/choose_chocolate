class StressFreeChocosController < ApplicationController
  def new
    @stress_free_chocos = Chocolate.joins(:review).merge(Review.where(cacao:5)).limit(6)
  end
end
