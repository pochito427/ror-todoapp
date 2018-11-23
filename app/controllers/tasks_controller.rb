class TasksController < ApplicationController

    before_action :authenticate_user!
    before_action :check_user
    def index
        @user = User.find(params[:user_id])
        @tasks = @user.tasks
    end

    def new
        @user = User.find(params[:user_id])
        @task = @user.tasks.new
    end

    def create
        @user = User.find(params[:user_id])
        @task = @user.tasks.create(task_params)
        if @task.save
            redirect_to action: 'index'    
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])
    end

    def edit
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])
        render :edit
    end

    def update
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])
        if @task.update_attributes(task_params)
            redirect_to action: 'index'
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @task = @user.tasks.find(params[:id])
        @task.destroy
        redirect_to action: 'index'
    end

    private

    def task_params
        params.require(:task).permit(:title, :description)
    end

    def check_user
        if current_user != User.find(params[:user_id])
            redirect_to root_path
        end
    end

end
