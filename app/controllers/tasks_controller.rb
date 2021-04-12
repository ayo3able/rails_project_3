class TasksController < ApplicationController
    before_action :set_task, only: %i[ show edit update destroy ]
     before_action :authenticate_user!
    
    def index
        @tasks = Task.all
        @tasks.tasks.build
    end

    def show
     
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
      
             if @task.save
               redirect_to task_path(@task)
            else
                render :new
             end
   
    end

    def edit
       
    end

    def update
            if @task.update(task_params)
               redirect_to project_url(@task.project_id)
             else
              render :edit
        end
    end

    def destroy
        @task.destroy
        redirect_to user_path
  
    end

    private

    def set_task
        @task = Task.find(params[:id])
        
    end

    def task_params
        params.require(:task).permit(:title, :start, :deadline, :instrutions )
    end
end
