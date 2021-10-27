class ChocolatesController < ApplicationController

# chocolate一覧を見るためのcontroller
  def new
    @chocolate = Chocolate.new
  end

  def index
    @chocolates = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end
  
end
