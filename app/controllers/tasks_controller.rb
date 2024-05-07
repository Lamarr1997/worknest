class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @user = current_user
    @task.user = @user
    if @task.valid
      @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.permit(:task).require(:title, :location, :price)
  end
end
