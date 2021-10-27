class ExhaustedChocosController < ApplicationController
  def new
    @exhausted_choco = Chocolate.joins(:review).merge(Review.where(sweet:5)).task
  end
end
