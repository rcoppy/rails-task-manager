class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def submit_new
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def submit_edit
    Task.update(params[:id], task_params)
    redirect_to tasks_path
  end

  def toggle_completed
    task = Task.find(params[:id])
    task.completed = !task.completed
    task.save
    redirect_to tasks_path
  end

  def remove
    Task.delete(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    return params.require(:task).permit(:title, :details, :completed)
  end
end
