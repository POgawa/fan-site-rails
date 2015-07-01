class WorksController<ApplicationController

  def show
    @work = Work.find(params[:id])
    @ratings = Rating.all

  end

  def new
    @theme = Theme.find(params[:theme_id])
    @work = @theme.works.new
  end

  def create
    @theme = Theme.find(params[:theme_id])
    @work = @theme.works.new(work_params)
    if @work.save
      redirect_to theme_path(@work.theme)
    else
      render :new
    end
  end

  def edit
    @theme = Theme.find(params[:theme_id])
    @work = Work.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:theme_id])
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to theme_path(@work.theme)
    else
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to root_path
  end

  private
  def work_params
    params.require(:work).permit(:title, :description)
  end
end
