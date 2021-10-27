class StressFreeChocosController < ApplicationController
  def new
    @stress_free_choco = Chocolate.joins(:review).merge(Review.where(cacao:5)).take(1)
  end
end
