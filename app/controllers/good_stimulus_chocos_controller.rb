class GoodStimulusChocosController < ApplicationController
  def new
    @good_stimulus_choco = Chocolate.joins(:review).merge(Review.where(appearance:4, texture:4)).task
  end
end
