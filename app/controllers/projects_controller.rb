class ProjectsController < ApplicationController
    before_action :set_project, only: %i[ show edit update destroy ]
     before_action :authenticate_user!
    
    def index
        @projects = Project.all
       
    end

    def show
     
    end


    def new
        @team = Team.find_by(id: params[:team_id])
        @project = @team.projects.build
         @project.tasks.build
       
    end

    def create
      
        @project = Project.new(project_params)
      
             if @project.save
               redirect_to project_path(@project)
            else
               render :new
             end
        
    end

    def edit
       
    end

    def update
      
            if @project.update(project_params)
                redirect_to team_url(@project.team_id)
             else
                render :edit
        end
    end

    def destroy
        @project.destroy
        redirect_to user_path
        
    end

    private

    def set_project
        @project = Project.find(params[:id])
        
    end

    def project_params
        params.require(:project).permit(:title, :goal, :user_id, :team_id, tasks_attributes: [:title, :start, :deadline, :instructions, :user_id, :project_id] )
    end
end
