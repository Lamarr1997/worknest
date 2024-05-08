class BookingsController < ApplicationController
  # def new
  #   @task = Task.find(params[:task_id])
  #   @booking = Booking.new
  # end

  def create
    @task = Task.find(params[:task_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.task = @task
    if @booking.valid?
      @booking.save
      redirect_to task_booking_path(@task, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @task = @booking.task
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    @task = @booking.task
    redirect_to task_path(@task)
  end

  private

  def booking_params
    params.require(:booking).permit(:id)
  end
end
