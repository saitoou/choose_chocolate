class Admin::ChocolatesController < Admin::BaseController
  before_action :set_chocolate, only: %i[show edit update destroy]
  def new
    @chocolate = Chocolate.new
  end

  def create
    @chocolate = Chocolate.new(chocolate_params)

    if @chocolate.save
      flash[:notice] = "追加しました"
      redirect_to new_admin_chocolate_path
    end
  end

  def index
    @chocolates = Chocolate.all
  end

  def edit; end

  def show; end

  def update
    if @chocolate.update(chocolate_params)
      flash[:notice] = "更新しました"
      redirect_to admin_chocolate_path
    else
      flash.now[:notice] = "更新に失敗"
      render :edit
    end
  end

  def destroy
    @chocolate.image.purge if @chocolate.image.attached?
    @chocolate.destroy!
  end

  private

  def chocolate_params
    params.require(:chocolate).permit(:name, :detail, :image)
  end

  def set_chocolate
    @chocolate = Chocolate.find(params[:id])
  end
end
