class ProjectsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @projects = Project.all
    end

    def show
      set_project
    end

    def new
        @project = Project.new
        @tasks = Task.all
    end

    def create
       @project = Project.create(project_params)
       redirect_to project_path(@project) 
    end

    def edit
        @project = set_project
    end

    def update
        set_project
        if @project.update(project_params)
        redirect_to project_path(@project)
        else
            erb: edit
        end
    end

    def destroy
        @project = Project.destroy
        redirect_to project_path
    end

    private

    def set_project
        @project = Project.find(params[:id])
        
    end

    def project_params
        params.require(:project).permit(:name, :goal)
    end
end
