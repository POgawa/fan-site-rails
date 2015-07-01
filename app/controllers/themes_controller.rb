class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to themes_path
    else
      render :new
    end
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update(theme_params)
      redirect_to themes_path
    else
      render :edit
    end
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    redirect_to themes_path
  end

  private
  def theme_params
    params.require(:theme).permit(:title, :description)
  end

end
