class TeamsController < ApplicationController
    before_action :set_team, only: %i[ show edit update destroy ]
    before_action :authenticate_user!
   
   def index
       @teams = Team.all
   end

   def show
    
   end

   def new
       @team = Team.new
       @team.projects.build
   end

   def create
    @team = Team.new(team_params)
    @team.team_id = @team_id
    
         if @team.save
            redirect_to team_path(@team)
        else
            render :new
         end
  
   end

   def edit
      
   end

   def update
  
        if @team.update(team_params)
            redirect_to team_path(@team)
         else
           render :edit
        end
   
   end

   def destroy
    @team.destroy
        redirect_to user_path
    end


   private

   def set_team
       @team = Project.find(params[:id])
       
   end

   def team_params
       params.require(:team).permit(
           :name,
           projects_attributes: [:title, :goal])
   end



end
