class TasksController < ApplicationController

  def new
    @tasks = Task.new
    render :show_form
  end

  def create
    @task = Task.create(task_params)
    @tasks = Task.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
  end

  def edit
    @task = Task.find(params[:id])
    render :show_form
  end

  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
