class ProjectsController < InheritedResources::Base
  before_filter :only => [:create] { params[:project][:user_id] = current_user.id }

  def show
    @project = Project.find params[:id]
  end

  def index
    @projects = signed_in? ? current_user.projects : []
    @project = Project.new
  end

  def create
    super do |format|
      format.html { redirect_to @project, :notice => "#{@project.name} was created!" }
    end
  end

  def refresh
    project = Project.find(params[:id])
    project.update_from_cucumber
    redirect_to project_path(project), :notice => "Fresh project!"
  end
end
