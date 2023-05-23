class TasksController < ApplicationController
  before_action :set_task, except: %i[index new create]

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to @task
  end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to @task
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
