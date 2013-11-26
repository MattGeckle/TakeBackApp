class ProjectsController < ApplicationController


  def show
    id = params[:id] # retrieve the project ID from URI route
    @project=Project.find(params[:id])
   end


  def new
  end

  def create
    @project = Project.create!(params[:project])
    #@project.save
    flash[:notice] = "#{@project.title} was successfully created!"
    redirect_to @project

  end



  def index
	@projects = Project.all
  end

  def update
  end

  def edit
	@project = Project.find params[:id]
  end

  def destroy
  end

#private
#  def project_params
#    params.require(:project).permit(:title, :location, :description)
#  end

end
