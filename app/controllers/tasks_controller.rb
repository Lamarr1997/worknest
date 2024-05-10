class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    if params[:query].present?
      @tasks = Task.task_search(params[:query])
    else
      @tasks = Task.all
    end

    @markers = @tasks.geocoded.map do |task|
      {
        lat: task.latitude,
        lng: task.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {task: task}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @user = current_user
    @task.user = @user
    if @task.valid?
      @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @task = Task.find(params[:id])
    if @task.geocoded?
      @marker = [{
        lat: @task.latitude,
        lng: @task.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {task: @task}),
        marker_html: render_to_string(partial: "marker")
      }]
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :location, :price, :photo, :task_due_by)
  end
end
