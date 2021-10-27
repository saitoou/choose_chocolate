class TiredChocosController < ApplicationController
  def new
    @tired_choco = Chocolate.joins(:review).merge(Review.where(sweet:4, melt:4)).take(1)
  end
end
