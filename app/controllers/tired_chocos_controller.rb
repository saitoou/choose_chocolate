class TiredChocosController < ApplicationController
  def new
    @tired_chocos = Chocolate.joins(:review).merge(Review.where(sweet:4, melt:4)).limit(6)
  end
end
