class GoodStimulusChocosController < ApplicationController
  def new
    @good_stimulus_chocos = Chocolate.joins(:review).merge(Review.where(appearance:4, texture:4)).limit(6)
  end
end
