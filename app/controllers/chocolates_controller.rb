class ChocolatesController < ApplicationController
# chocolate一覧を見るためのcontroller
  def index
    @chocolates_list = Chocolate.joins(:review).all.select("name", "detail", "image", "reviews.*")
  end  
end
