class ProjectsController < ApplicationController
    before_action :set_project, only: %i[ show edit update destroy ]
     before_action :authenticate_user!
    
    def index
        @projects = Project.all
        @projects.tasks.build
    end

    def show
     
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.team_id = @project_id
        respond_to do |format|
             if @project.save
                format.html {redirect_to team_url(@project.team_id), notice: "Success"}
            else
                format.html {render :new}
             end
         end
    end

    def edit
       
    end

    def update
       respond_to do |format|
            if @project.update(project_params)
                format.html {redirect_to team_url(@project.team_id), notice: "Success"}
             else
                format.html {render :edit}
            end
        end
    end

    def destroy
        @project = Project.deestroy
        respond_to do |format|
            format.html {redirect_to team_url(@project.team_id), notice: "Bye Bye"}
        end 
    end

    private

    def set_project
        @project = Project.find(params[:id])
        
    end

    def project_params
        params.require(:project).permit(
            :title,
             :goal, 
             :user_id, 
             :team_id,
             tasks_attributes: [:title, :start, :deadline, :instrutions] )
    end
end
