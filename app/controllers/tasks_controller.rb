class TasksController < ApplicationController
  before_action :set_task, only: %i(edit update destroy)
  
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :detail, :status)
  end
end
