class ChocolatesController < ApplicationController
# chocolate一覧を見るためのcontroller
  def index
    @chocolate_lists = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end

end
