class ChocolatesController < ApplicationController

  def new
    @chocolate = Chocolate.new
  end

  def index
    @chocolates = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end

  def result
  end

  def choice
  end

  private

  
end
