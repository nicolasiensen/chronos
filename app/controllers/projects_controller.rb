class ProjectsController < InheritedResources::Base
  def show
    @project = Project.find params[:id]
  end

  def index
    @projects = Project.all
    @project = Project.new
  end

  def create
    super do |format|
      format.html { redirect_to @project, :notice => "#{@project.name} was created!" }
    end
  end
end
