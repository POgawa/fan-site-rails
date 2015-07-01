class WorksController<ApplicationController

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @theme = Theme.find(params[:id])
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def work_params
    params.require(:work).permit(:title, :description)
  end
end
