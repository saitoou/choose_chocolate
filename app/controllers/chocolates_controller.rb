class ChocolatesController < ApplicationController
  def index
    @chocolates = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end

  def result
    @chocolate_result = 
  end

  def question
    @chocolate_choise = 
  end

  private

  
end
